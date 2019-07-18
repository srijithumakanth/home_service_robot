#!/bin/bash
xterm -e "source /home/workspace/catkin_ws/devel/setup.bash; export TURTLEBOT_GAZEBO_WORLD_FILE="/home/workspace/catkin_ws/src/world/myworld.world"; roslaunch turtlebot_gazebo turtlebot_world.launch" &
sleep 7
xterm -e "source /home/workspace/catkin_ws/devel/setup.bash; roslaunch turtlebot_gazebo gmapping_demo.launch" &
sleep 5
xterm -e "source /home/workspace/catkin_ws/devel/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch"&
sleep 5
xterm -e "source /home/workspace/catkin_ws/devel/setup.bash; rosrun wall_follower wall_follower"