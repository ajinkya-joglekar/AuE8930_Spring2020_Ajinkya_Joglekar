#!/usr/bin/env python
import rospy
from geometry_msgs.msg  import Twist, Point
from turtlesim.msg import Pose
from math import pow,atan2,sqrt
from sensor_msgs.msg import LaserScan

dist = 10000000000

class turtlebot():

    def callback(msg):
        global dist
	dist = min(msg.ranges)
    
    rospy.init_node('vel_scan', anonymous=True)
    pub = rospy.Publisher('cmd_vel', Twist, queue_size=10)
    pose_subscriber = rospy.Subscriber('scan', LaserScan, callback)
    pose = Pose()
    rate = rospy.Rate(10)
    move = Twist()
    
    stop_dist = 0.5
    while dist > stop_dist:
	move.linear.x = 0.5
	pub.publish(move)
	rate.sleep()
	
    move.linear.x = 0
    pub.publish(move)
    rospy.spin()
if __name__ == '__main__':
    try:
        x = turtlebot()
    except rospy.ROSInterruptException: pass