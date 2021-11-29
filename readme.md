The successful implementation of tracking on ROS

Thanks for the [https://github.com/xinshuoweng/AB3DMOT]!!!

1.The Environment：

	Linux（Ubuntu 18.04）
	ROS （ros-kinetic-desktop-full）
	python 2.7

2.Install dependency for the toolbox:

	scikit-learn==0.19.2
	filterpy==1.4.5
	numba==0.43.1
	matplotlib==2.2.3
	pillow==6.2.2
	opencv-python==3.4.3.18
	glob2==0.6
	llvmlite==0.31.0 (for python 2.7)
	numba==0.43.1
	
	2.1 To install required dependencies on the system python, please run the following command at the root of this code:
	$ cd path/to/fusion_platform
	$ pip install -r requirements.txt

3.Dataset preparation:

	|---KITTI---|
		|---pointrcnn_Car_test
		|
		|---resources----|
			|----testing---|
				|---calib
				|
				|---Image_02
			  
4.Application platform

       4.1 Compile
       	$ cd path/to/fusion_platform
		$ catkin_make
       4.2 Run the result topic message to accept the package and visualize it
		$ source devel/setup.bash
		$ rosrun fusion_model sub_fusion_result.py --data_ot_path ~/path/data/KITTI/resources/testing
            ( "--data_ot_path ~/path/data/KITTI/resources/testing"  the path is determined by where the dataset is placed )
       4.3 Running result topic message sending package
		$ source devel/setup.bash
		$ rosrun fusion_model pub_fusion_result.py --data_root_path ~/path/data/KITTI --result_sha pointrcnn_Car_test
	 	( "--data_root_path ~/path/data/KITTI   AND --result_sha pointrcnn_Car_test"  the path is determined by where the dataset is placed )
	
