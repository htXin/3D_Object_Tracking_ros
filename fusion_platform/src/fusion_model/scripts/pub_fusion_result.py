#! /usr/bin/env python

from __future__ import print_function
import matplotlib; matplotlib.use('Agg')
import os, numpy as np, time, sys
from AB3DMOT_libs.model import AB3DMOT
from AB3DMOT_libs.file_utils import load_list_from_folder, fileparts
import argparse

import rospy
from fusion_model.msg import detection_object,detection_object_array

def parse_config():
	parser = argparse.ArgumentParser(description='fusion platform parser')
	parser.add_argument('--data_root_path', type=str, default='data/KITTI', help='specify the point cloud data file or directory')
	parser.add_argument('--result_sha', type=str, default='pointrcnn_Car_test', help='specify the point cloud data file')
	args = parser.parse_args()
	return args

if __name__ == '__main__':
	args = parse_config()
	rospy.init_node('fusion_object_publisher',anonymous=True)
	fusion_object_pub = rospy.Publisher('/fusion_object_info', detection_object_array, queue_size=10)

	result_sha = args.result_sha
	det_id2str = {1:'Pedestrian', 2:'Car', 3:'Cyclist'}

	seq_file_list, num_seq = load_list_from_folder(os.path.join(args.data_root_path, result_sha))
	total_time, total_frames = 0.0, 0
	seq_count = 0
	for seq_file in seq_file_list:
		_, seq_name, _ = fileparts(seq_file)

		mot_tracker = AB3DMOT() 
		seq_dets = np.loadtxt(seq_file, delimiter=',')          # load detections, N x 15
		
		# if no detection in a sequence
		if len(seq_dets.shape) == 1: seq_dets = np.expand_dims(seq_dets, axis=0) 	

		# loop over frame
		min_frame, max_frame = int(seq_dets[:, 0].min()), int(seq_dets[:, 0].max())
		for frame in range(min_frame, max_frame + 1):
			# logging
			print_str = 'processing %s: %d/%d, %d/%d   \r' % (seq_name, seq_count, num_seq, frame, max_frame)
			sys.stdout.write(print_str)
			sys.stdout.flush()

			# get irrelevant information associated with an object, not used for associationg
			ori_array = seq_dets[seq_dets[:, 0] == frame, -1].reshape((-1, 1))		# orientation
			other_array = seq_dets[seq_dets[:, 0] == frame, 1:7] 		# other information, e.g, 2D box, ...
			additional_info = np.concatenate((ori_array, other_array), axis=1)		

			dets = seq_dets[seq_dets[:,0] == frame, 7:14]            # h, w, l, x, y, z, theta in camera coordinate follwing KITTI convention
			dets_all = {'dets': dets, 'info': additional_info}

			# important
			start_time = time.time()
			trackers = mot_tracker.update(dets_all)
			cycle_time = time.time() - start_time
			total_time += cycle_time

			# publish results, loop over each tracklet	
			fusion_objects = detection_object_array()
			fusion_objects.header.stamp = rospy.Time.now()
			fusion_objects.frame_det_id	= frame
			fusion_objects.seq_id = seq_name
			for d in trackers:

				# bbox3d_tmp = d[0:7]       # h, w, l, x, y, z, theta in camera coordinate
				# id_tmp = d[7]
				# ori_tmp = d[8]
				# type_tmp = det_id2str[d[9]]
				# bbox2d_tmp_trk = d[10:14]
				# conf_tmp = d[14]
				detectionObject = detection_object()
				detectionObject.header.stamp = fusion_objects.header.stamp
				detectionObject.h = str(format(d[0],'.6f'))
				detectionObject.w = str(format(d[1],'.6f'))
				detectionObject.l = str(format(d[2],'.6f'))
				detectionObject.x = str(format(d[3],'.6f'))
				detectionObject.y = str(format(d[4],'.6f'))
				detectionObject.z = str(format(d[5],'.6f'))
				detectionObject.rot_y = str(format(d[6],'.6f'))
				detectionObject.object_id = d[7]
				detectionObject.ori_tmp = str(format(d[8],'.6f'))
				detectionObject.type = det_id2str[d[9]]
				detectionObject.x1,detectionObject.y1,detectionObject.x2,detectionObject.y2 = str(format(d[10],'.6f')),str(format(d[11],'.6f')),str(format(d[12],'.6f')),str(format(d[13],'.6f'))
				detectionObject.score = str(format(d[14],'.6f'))
				fusion_objects.detection_objects.append(detectionObject)

			    # save in detection format with track ID, can be used for dection evaluation and tracking visualization
				# str_to_srite = '%s -1 -1 %f %f %f %f %f %f %f %f %f %f %f %f %f %d\n' % (type_tmp, ori_tmp,
				# 	bbox2d_tmp_trk[0], bbox2d_tmp_trk[1], bbox2d_tmp_trk[2], bbox2d_tmp_trk[3], 
				# 	bbox3d_tmp[0], bbox3d_tmp[1], bbox3d_tmp[2], bbox3d_tmp[3], bbox3d_tmp[4], bbox3d_tmp[5], bbox3d_tmp[6], conf_tmp, id_tmp)

			pub_info = 'start pub frame %d fusion result' % (frame)
			sys.stdout.write(pub_info)
			sys.stdout.flush()
			fusion_object_pub.publish(fusion_objects) 
			total_frames += 1
		seq_count += 1  
	print('Total Tracking took: %.3f for %d frames or %.1f FPS' % (total_time, total_frames, total_frames / total_time))