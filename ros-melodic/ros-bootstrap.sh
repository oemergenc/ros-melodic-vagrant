#!/usr/bin/env bash

# This script will install ros-melodic-desktop-full

#Configure ROS.org repository
sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

#Setup Keys
apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

#Update the indexes
apt-get update

#Install C/C++ Compilers
apt-get -y install build-essential

#Install ROS with full Desktop features: ROS, rqt, rviz, robot-generic libraries, 2D/3D simulators, navigation and 2D/3D perception
apt-get -y install ros-melodic-desktop-full

#initialize RosDep
rosdep init
rosdep update

#Install RosInstall
apt-get -y install python-rosinstall python-rosinstall-generator python-wstool

#Install Catkin tools
apt-get -y install ros-melodic-catkin

#Install some usefull tools
apt-get -y install ros-melodic-rqt ros-melodic-rqt-common-plugins

#Install tutorials
apt-get -y install ros-melodic-ros-tutorials