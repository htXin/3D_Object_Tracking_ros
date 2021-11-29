#! /usr/bin/env python
import rospy
from fusion_model.msg import detection_object,detection_object_array
import argparse
import os, numpy as np, sys, cv2
from PIL import Image
from AB3DMOT_libs.file_utils import load_list_from_folder, fileparts, random_colors
from AB3DMOT_libs.type_check import is_path_exists
from AB3DMOT_libs.kitti_utils import read_label, compute_box_3d, draw_projected_box3d, Calibration, Object3d
import matplotlib.pyplot as plt

max_color = 30
colors = random_colors(max_color)       # Generate random colors
type_whitelist = ['Car', 'Pedestrian', 'Cyclist']
score_threshold = -10000
width = 1242
height = 374




def show_image_with_boxes(img, objects_res, object_gt, calib):
		img2 = np.copy(img) 

		for obj in objects_res:
			box3d_pts_2d, _ = compute_box_3d(obj, calib.P)
			color_tmp = tuple([int(tmp * 255) for tmp in colors[obj.id % max_color]])
			img2 = draw_projected_box3d(img2, box3d_pts_2d, color=color_tmp)
			text = 'ID: %d' % obj.id
			if box3d_pts_2d is not None:
				img2 = cv2.putText(img2, text, (int(box3d_pts_2d[4, 0]), int(box3d_pts_2d[4, 1]) - 8), cv2.FONT_HERSHEY_TRIPLEX, 0.5, color=color_tmp) 

		img = Image.fromarray(img2)
		img = img.resize((width, height))
		plt.imshow(img),plt.pause(0.01),plt.clf()

def vis(msg,data_root):
    image_dir = os.path.join(data_root, 'image_02/%s' % msg.seq_id)
    calib_file = os.path.join(data_root, 'calib/%s.txt' % msg.seq_id)

    image_tmp = os.path.join(image_dir,'%s.png' % str(format(msg.frame_det_id, '06d')))
    image_index = int(fileparts(image_tmp)[1])
    image_tmp = np.array(Image.open(image_tmp))
    img_height, img_width, img_channel = image_tmp.shape
    calib_tmp = Calibration(calib_file)			# load the calibration

    object_res_filtered = []
    for object_tmp in msg.detection_objects:
        if object_tmp.type not in type_whitelist: continue
        if hasattr(object_tmp, 'score'):
            if float(object_tmp.score) < score_threshold: continue
        line = '%s -1 -1 %f %f %f %f %f %f %f %f %f %f %f %f %f %d' % (object_tmp.type,float(object_tmp.ori_tmp),float(object_tmp.x1),float(object_tmp.y1),
            float(object_tmp.x2),float(object_tmp.y2),float(object_tmp.h),float(object_tmp.w),float(object_tmp.l),float(object_tmp.x),
            float(object_tmp.y),float(object_tmp.z),float(object_tmp.rot_y),float(object_tmp.score),object_tmp.object_id)
        detobject = Object3d(line)
        object_res_filtered.append(detobject)

    num_instances = len(object_res_filtered)
    show_image_with_boxes(image_tmp, object_res_filtered, [], calib_tmp)
    print('number of objects to plot is %d' % (num_instances))

def objectInfoCallback(msg,path):
    # print(path)
    print("get fusion result of frame %s/%s" % (msg.seq_id,str(format(msg.frame_det_id, '06d'))))
    # for i in msg.detection_objects:
    #     rospy.loginfo("Subcribe Object Info: x:%f  y:%f  z:%f l:%f  w:%f  h:%f rot_y:%f type:%s socre:%f object_id:%d", 
	# 		 float(i.x),float(i.y),float(i.z),float(i.l),float(i.w),float(i.h),float(i.rot_y),i.type,float(i.score),i.object_id)
    vis(msg,path)
def object_subscriber(path):
	
    rospy.init_node('fusion_object_subscriber', anonymous=True)
	
    rospy.Subscriber("/fusion_object_info", detection_object_array, objectInfoCallback, callback_args=path)

    rospy.spin()

def parse_config():
	parser = argparse.ArgumentParser(description='fusion platform parser')
	parser.add_argument('--data_root_path', type=str, default='./data/KITTI/resources/testing', help='specify the point cloud data file or directory')
	args = parser.parse_args()
	return args

if __name__ == '__main__':
    args = parse_config()
    object_subscriber(args.data_root_path)
    plt.figure()
