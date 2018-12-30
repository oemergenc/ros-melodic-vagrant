#!/usr/bin/env bash

#see http://wiki.ros.org/ROS/NetworkSetup#Single_machine_configuration
echo "export ROS_HOSTNAME=localhost" >> /home/vagrant/.zshrc
echo "export ROS_MASTER_URI=http://localhost:11311" >> /home/vagrant/.zshrc

#Setup ROS environment variables
echo "source /opt/ros/melodic/setup.zsh" >> /home/vagrant/.zshrc