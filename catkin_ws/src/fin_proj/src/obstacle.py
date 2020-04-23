#!/usr/bin/env python
import rospy
from geometry_msgs.msg  import Twist, Point
from turtlesim.msg import Pose
from math import pow,atan2,sqrt
from sensor_msgs.msg import LaserScan
import numpy as np

dist_r = 0
dist_front = 0
dist_l = 0
#global dist

class turtlebot():

    def callback(msg):
        global dist_r
	global dist_front
	global dist_l
	distances = []
	distances_front = []
	distances_l = []
    	head1 = msg.ranges[1:16]
	#h1 = head1.index('10')
	#print('h1', h1)
	
	head2 = msg.ranges[344:359]
	#h2 = head2.index('10')
	#print('h2', h2)
    	tail = msg.ranges[280:330]
	left = msg.ranges[30:80]
    	distances_front.extend(head1)
	distances_front.extend(head2)
    	distances.extend(tail)
	distances_l.extend(left)
	
    	#dist_r = min(distances)
	dist_r = sum(distances)/len(distances)
	
	

	#dist_l = min(distances_l)
	dist_l = sum(distances_l)/len(distances_l)
	
	

	dist_front = min(distances_front)
	
	if dist_front > 10:
	    dist_front = 10

    rospy.init_node('vel_scan', anonymous=True)
    pub = rospy.Publisher('cmd_vel', Twist, queue_size=10)
    pose_subscriber = rospy.Subscriber('scan', LaserScan, callback)
    #pose = Pose()
    rate = rospy.Rate(10)
    move = Twist()
    
    front = 0.9
    vel = 0.25
    z = 1
    e = 0
    while not rospy.is_shutdown():
	error_front = front - dist_front
	if error_front > 0: 
            
	    if dist_r > dist_l:
                move.angular.z = -2*(error_front)
	        #move.linear.x = 0.3
		move.linear.x = 0.17/(error_front + 1)
                pub.publish(move)
	    else:
    		move.angular.z = 2*(error_front)
	        #move.linear.x = 0.3
		move.linear.x = 0.17/(error_front + 1)
                pub.publish(move) 
    		
	else:
	    move.linear.x = vel
	    move.angular.z = 0
	    pub.publish(move)
    
    rospy.spin()

def shutdown():
    move = Twist()
    move.linear.x = 0
    move.angular.z = 0
    pub.publish(move)

if __name__ == '__main__':
    try:
        x = turtlebot()
    except rospy.on_shutdown(): 
        shutdown()
