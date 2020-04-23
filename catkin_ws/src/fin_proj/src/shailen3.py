#!/usr/bin/env python
import rospy
import cv2
import numpy as np
from cv_bridge import CvBridge, CvBridgeError
from geometry_msgs.msg import Twist, Point
from sensor_msgs.msg import Image
from move_robot import MoveTurtlebot3
from math import pow,atan2,sqrt
from sensor_msgs.msg import LaserScan
from turtlesim.msg import Pose
from darknet_ros_msgs.msg import BoundingBoxes
import time



dist_r = 0
dist_front = 0
dist_l = 0
stop = False
stopped = False
min_dist = 100

lane_confirm = False

class LineFollower(object):

    def __init__(self):
    
        self.bridge_object = CvBridge()
        self.image_sub = rospy.Subscriber("/camera/rgb/image_raw",Image,self.camera_callback)
        self.moveTurtlebot3_object = MoveTurtlebot3()



    def camera_callback(self,data):
        
        # We select bgr8 because its the OpneCV encoding by default
        try:
            cv_image = self.bridge_object.imgmsg_to_cv2(data, desired_encoding="bgr8")
        except CvBridgeError as e:
            print(e)
            
        # We get image dimensions and crop the parts of the image we dont need
        height, width, channels = cv_image.shape
        msk = int(height/3)
        crop_img = cv_image[(height)/2+msk:(height)][1:width]
        
        # Convert from RGB to HSV
        hsv = cv2.cvtColor(crop_img, cv2.COLOR_BGR2HSV)
        
        # Define the Yellow Colour in HSV

        """
        To know which color to track in HSV use ColorZilla to get the color registered by the camera in BGR and convert to HSV. 
        """

        # Threshold the HSV image to get only yellow colors
        lower_yellow = np.array([20,100,100])
        upper_yellow = np.array([50,255,255])
        mask = cv2.inRange(hsv, lower_yellow, upper_yellow)
        
        # Calculate centroid of the blob of binary image using ImageMoments
        m = cv2.moments(mask, False)

        global lane_confirm

        try:
            cx, cy = m['m10']/m['m00'], m['m01']/m['m00']
            lane_finder = False
            lane_confirm = True
        except ZeroDivisionError:
            cx, cy = height/2, width/2
            lane_finder = True

        res = cv2.bitwise_and(crop_img, crop_img, mask= mask)
        
        # Draw the centroid in the resultut image
       
        cv2.circle(res,(int(cx), int(cy)), 10,(0,0,255),-1)

        cv2.imshow("Original", cv_image)
        cv2.imshow("MASK", mask)
        cv2.imshow("RES", res)
        cv2.waitKey(1)	
	global box
	global dur
		
	def stopcallback(data):
		
		for box in data.bounding_boxes:
			global stop
	
			# print (box.id)
			
       			if box.id == 11 and stop==False:
				
            			# t0 = rospy.get_time()
				# pub_s=rospy.Publisher
				# d=0
				# print(t0)
				# while(d<5):
				# 	t1=rospy.get_time()
				# 	pub_s=rospy.Publisher('cmd_vel',Twist,queue_size=10)
				# 	move=Twist()
				# 	move.linear.x=0
				# 	move.angular.z=0
				# 	pub_s.publish(move)
				# 	d=t1-t0
				# 	print(d)
					#print("stop sign")
				    stop=True
						
				#d=rospy.Duration(10,0)
				#rospy.sleep(d)
				
				#time.sleep(10)
				#twist_object.angular.z = 0
				#twist_object.angular.x = 0
				#twist_object.angular.y = 0
                 		#twist_object.linear.x = 0
				#twist_object.linear.y = 0
				#twist_object.linear.z = 0	
            			#while (dur < 10.00):
					#t1=float(rospy.Time.now().to_sec())
					#dur=t1-t0
                 			#twist_object.angular.z = 0
                 			#twist_object.linear.x = 0
					#twist_object.linear.y = 0
					#twist_object.linear.z = 0
					#twist_object.angular.x = 0
					#twist_object.angular.y = 0

	def laser_callback(msg_laser):
            global min_dist
            ranges = msg_laser.ranges[1:120]
            min_dist = min(ranges)
            if min_dist == 0:
                min_dist  = 10
            return min_dist
					
					
	rospy.Subscriber('/darknet_ros/bounding_boxes',BoundingBoxes,stopcallback)        

        """
	Enter controller here.
        """
        if stop == False:
            print('Non stop condition')
            error_x = cx - width / 2
            twist_object = Twist()
            # if error_x >-5 and error_x <5:
            #     error = 0
            twist_object.angular.z = -float(error_x/800)
            # temp = np.clip((-float(error_x/1000)), -0.2, 0.2)
            twist_object.linear.x = 0.1
        if stop == True:
            pose_sub = rospy.Subscriber('scan', LaserScan, laser_callback)
            global min_dist,stopped
            print('Min dist is: ***************************************************************************************', min_dist)
            if min_dist > 0.20 and stopped == False:
                # print('Non stop condition')
                error_x = cx - width / 2
                twist_object = Twist()
                # if error_x >-5 and error_x <5:
                #     error = 0
                twist_object.angular.z = -float(error_x / 800)
                # temp = np.clip((-float(error_x/1000)), -0.2, 0.2)
                twist_object.linear.x = 0.1
            elif min_dist < 0.20 and stopped == False:
                t0 = rospy.get_time()
                stop_dur = 0
                while stop_dur < 3:
                    t1 = rospy.get_time()
                    twist_object = Twist()
                    twist_object.angular.z = 0
                    twist_object.linear.x = 0
                    self.moveTurtlebot3_object.move_robot(twist_object)
                    stop_dur = t1 - t0
                    stopped = True
            elif stopped == True:
                # print('Non stop condition')
                error_x = cx - width / 2
                twist_object = Twist()
                # if error_x >-5 and error_x <5:
                #     error = 0
                twist_object.angular.z = -float(error_x / 800)
                # temp = np.clip((-float(error_x/1000)), -0.2, 0.2)
                twist_object.linear.x = 0.1


        if lane_finder:
            if lane_confirm==False:
                twist_object.linear.x = 0
                twist_object.angular.z = -0.2

            if lane_confirm:
                twist_object.linear.x = 0
                twist_object.angular.z = 0

        # rospy.loginfo("ANGULAR VALUE SENT===>"+str(twist_object.angular.z))
        # Make it start turning
        self.moveTurtlebot3_object.move_robot(twist_object)
        
    def clean_up(self):
        self.moveTurtlebot3_object.clean_class()
        cv2.destroyAllWindows()
        
        

def main():
    rospy.init_node('line_following_node', anonymous=True)
    
    
    line_follower_object = LineFollower()

    
    rate = rospy.Rate(5)
    ctrl_c = False
    def shutdownhook():
        # works better than the rospy.is_shut_down()
        line_follower_object.clean_up()
        rospy.loginfo("shutdown time!")
        ctrl_c = True
    
    rospy.on_shutdown(shutdownhook)
    
    while not ctrl_c:
        rate.sleep()

    
    
if __name__ == '__main__':
    main()
