#!/usr/bin/env zsh 

source ~/.zshrc

#Setup your Catkin WorkSpace
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
/opt/ros/melodic/bin/catkin_init_workspace
cd ~/catkin_ws/
/opt/ros/melodic/bin/catkin_make

#Add the WorkSpace to the ROS environment
echo "source ~/catkin_ws/devel/setup.zsh" >> ~/.zshrc
