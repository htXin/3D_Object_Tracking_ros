Header header #header timestamp is time of frame acquisition
string type # type of object(pedestrian:1,car:2,cyclist:3)

string x1  
string y1 
string x2 
string y2 

string score

string x # x coordinate of the center of the bottom face of the bounding box
string y # y coordinate of the center of the bottom face of the bounding box
string z # x coordinate of the center of the bottom face of the bounding box
string l # size of bounding box along x dimension
string h # size of bounding box along y dimension
string w # size of bounding box along z dimension
string rot_y # rotation of bounding box with respect to the positive x axis

string ori_tmp
uint32 object_id