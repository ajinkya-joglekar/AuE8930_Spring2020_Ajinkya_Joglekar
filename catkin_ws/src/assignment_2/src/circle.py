import rospy
from assignment_2.srv import MakeCircle

def move_circle_client():
	rospy.wait_for_service('move_circle')
	try:
		radius = float(input("Enter Radius :"))
		speed = float(input("Enter Speed : "))
		move_circle = rospy.ServiceProxy('move_circle',MakeCircle)
		move_circle(speed,radius)

	except rospy.ServiceException, e:
		print "Wrong service call"	

if __name__ == '__main__':
		#print ("Lets make a circle")
		move_circle_client()		
