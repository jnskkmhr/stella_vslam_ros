#!/bin/bash
xhost +
IMAGE="openvslam-ros2-humble:latest"
NAME="openvslam-ros2-humble-container"

docker run --name $NAME -it --rm \
-e "ACCEPT_EULA=Y" --privileged \
-e DISPLAY \
-e "PRIVACY_CONSENT=Y" \
--net host \
-v $HOME/.Xauthority:/root/.Xauthority \
-v /dev/:/dev/ \
-v $HOME/ros2_ws:/home/ros2_ws \
$IMAGE