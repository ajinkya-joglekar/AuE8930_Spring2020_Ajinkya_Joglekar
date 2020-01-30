This file hgihlightxs the file sfor the second assignment.
These files can be found in src and srv folder(for the service MakeCircle).

Explaination of files in the src folder

circle.py: This file acts like a client file to send request to the make_circle_server.py with the speed and radius of the circle. In return it receives the Twist messages to run the turtlebot in the desired trajectory.

make_circle_server.py: This script intializes the service with service type 'MakeCircle' and function process_make_circle to take the inputs from the circle.py file and publish the linear.x and angular.z Twist messages to the turtlesim.

square_openloop.py: This is a simple pyhton file that