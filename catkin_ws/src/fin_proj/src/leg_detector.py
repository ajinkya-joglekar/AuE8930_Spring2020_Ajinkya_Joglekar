#!/usr/bin/env python
import rospy
from geometry_msgs.msg  import Twist, Point, PoseArray
from turtlesim.msg import Pose
from people_msgs.msg import PositionMeasurementArray
from people_msgs.msg import PositionMeasurement
from math import pow,atan2,sqrt
from nav_msgs.msg import Odometry
from tf.transformations import euler_from_quaternion
from sensor_msgs.msg import LaserScan

x = 0.0
y = 0.0
theta = 0.0
xp = 0.0
yp = 0.0
k_vel = 0.09
k_ang = 0.8
radius = 0.3

class turtlebot():
    def odo_value(msg):
        global x
        global y
        global theta
        x = msg.pose.pose.position.x
        y = msg.pose.pose.position.y
        orient = msg.pose.pose.orientation
        (r, p, theta) = euler_from_quaternion ([orient.x, orient.y, orient.z, orient.w])
        theta = round(theta, 2)
        return x, y

    def callback(data):
        try:
            global xp
            global yp
            global k_vel, k_ang, radius
            xp = data.poses[0].position.x
            xp = round(xp, 2)
            yp = data.poses[0].position.y
            yp = round(yp, 2)

            velocity_publisher = rospy.Publisher('cmd_vel', Twist, queue_size=10)
            rate = rospy.Rate(10)
            vel_msg = Twist()
            while sqrt(pow((xp - x), 2) + pow((yp - y), 2)) >= radius:
                vel_msg.linear.x = (k_vel) * (sqrt(pow((xp - x), 2) + pow((yp - y), 2)) + 1)
                vel_msg.linear.y = 0
                vel_msg.linear.z = 0
                vel_msg.angular.x = 0
                vel_msg.angular.y = 0
                vel_msg.angular.z = (k_ang) * (atan2(yp - y, xp - x) - theta)
                print(xp)
                velocity_publisher.publish(vel_msg)
                rate.sleep()

            vel_msg.linear.x = 0
            vel_msg.angular.z = 0
            velocity_publisher.publish(vel_msg)

        except IndexError:
            velocity_publisher = rospy.Publisher('cmd_vel', Twist, queue_size=10)
            rate = rospy.Rate(10)
            vel_msg = Twist()
            vel_msg.linear.x = 0
            vel_msg.angular.z = 0
            velocity_publisher.publish(vel_msg)


    rospy.init_node('vel_closed', anonymous=True)
    leg_subscriber = rospy.Subscriber('/to_pose_array/leg_detector', PoseArray, callback)
    pose_subscriber = rospy.Subscriber('odom', Odometry, odo_value)
    pose = Pose()
    rospy.spin()

if __name__ == '__main__':
    try:
        x = turtlebot()

    except rospy.ROSInterruptException: pass
