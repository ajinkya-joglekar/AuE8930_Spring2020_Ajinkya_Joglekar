#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from geometry_msgs.msg  import Twist, Point
from turtlesim.msg import Pose
from math import pow,atan2,sqrt
from sensor_msgs.msg import LaserScan
import numpy as np
import cv2
from cv_bridge import CvBridge, CvBridgeError
from sensor_msgs.msg import Image
from move_robot import MoveTurtlebot3


mode = 'n'
dist_r = 0
dist_front = 0
dist_l = 0
wall_executed = 0

lane_confirm = False

def listener():
    rospy.init_node('main_scr', anonymous=True)
    rospy.Subscriber('/keypress', String, callback)


def callback(data):
    global mode
    if data.data:
        mode = data.data
    else:
       pass

class turtlebot():
    global mode
    print('Mode is' ,mode)
    def wall(self,mode):
        print('Mode is in function', mode)
        while mode == 'w':
            listener()
            print('Mode in wall follower')
            print('In publisher for wall follower')
            pub = rospy.Publisher('cmd_vel', Twist, queue_size=10)
            pose_subscriber = rospy.Subscriber('scan', LaserScan, wall_callback)
            move = Twist()

            front = 0.9
            vel = 0.25
            z = 1
            e = 0
            while e < z and mode == 'w':
                listener()
                error_front = front - dist_front
                if error_front > 0:

                    if dist_r > dist_l:
                        move.angular.z = -2 * (error_front)
                        move.linear.x = 0.17 / (error_front + 1)
                        pub.publish(move)
                    else:
                        move.angular.z = 2 * (error_front)
                        move.linear.x = 0.17 / (error_front + 1)
                        pub.publish(move)

                else:
                    move.linear.x = vel
                    move.angular.z = 0
                    pub.publish(move)


def wall_callback(msg):
    global dist_r
    global dist_front
    global dist_l
    distances = []
    distances_front = []
    distances_l = []
    head1 = msg.ranges[1:16]


    head2 = msg.ranges[344:359]

    tail = msg.ranges[280:330]
    left = msg.ranges[30:80]
    distances_front.extend(head1)
    distances_front.extend(head2)
    distances.extend(tail)
    distances_l.extend(left)


    dist_r = sum(distances) / len(distances)

    dist_l = sum(distances_l) / len(distances_l)

    dist_front = min(distances_front)

    if dist_front > 10:
        dist_front = 10


def cam():
    global mode
    if mode == 'l':
        # bridge_object = CvBridge()
        # moveTurtlebot3_object = MoveTurtlebot3()
        image_sub = rospy.Subscriber("/camera/rgb/image_raw",Image,camera_callback)

def camera_callback(data):
    print('In callback')
    bridge_object = CvBridge()
    moveTurtlebot3_object = MoveTurtlebot3()
    # We select bgr8 because its the OpneCV encoding by default
    try:
        cv_image = bridge_object.imgmsg_to_cv2(data, desired_encoding="bgr8")
    except CvBridgeError as e:
        print(e)

    # We get image dimensions and crop the parts of the image we dont need
    height, width, channels = cv_image.shape
    crop_img = cv_image[(height)/2+180:(height)/2+200][1:width]

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

    """
Enter controller here.
    """
    error_x = cx - width / 2
    twist_object = Twist()
    if error_x >-5 and error_x <5:
        error = 0
    twist_object.angular.z = np.clip((-float(error_x/1000)), -0.2, 0.2)
    temp = np.clip((-float(error_x/1000)), -0.2, 0.2)
    twist_object.linear.x = np.clip(0.2*(1-abs(temp)/0.2), 0, 0.08)

    if lane_finder:
        if lane_confirm==False:
            twist_object.linear.x = 0.1
            twist_object.angular.z = -0.02

        if lane_confirm:
            twist_object.linear.x = 0.08
            twist_object.angular.z = 0.21

    rospy.loginfo("ANGULAR VALUE SENT===>"+str(twist_object.angular.z))
    # Make it start turning
    moveTurtlebot3_object.move_robot(twist_object)

def stop():
    while mode == 's':
        listener()
        pub = rospy.Publisher('cmd_vel', Twist, queue_size=10)
        move = Twist()
        move.linear.x = 0
        move.angular.z = 0
        pub.publish(move)
        print('Stopped')

def mode_select():
    global wall_executed
    while not rospy.is_shutdown():
        listener()
        print(mode)
        if mode == 'w' and wall_executed == 0:
            print('Invoking wall follower')
            x = turtlebot()
            x.wall(mode)
            wall_executed = 1
            '''Wall follwer end'''
        elif mode == 'l':
            print('L pressed')
        elif mode == 's':
            stop()
    rospy.spin()

if __name__ == '__main__':
        mode_select()
        # cam()
