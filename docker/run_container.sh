#!/bin/bash
xhost +
IMAGE="openvslam-ros2-humble:latest"
NAME="openvslam-ros2-humble-container"

docker run --name $NAME -it --rm --privileged \
-e "ACCEPT_EULA=Y" \
-e DISPLAY \
-e "PRIVACY_CONSENT=Y" \
--net host \
--ipc host \
-v $HOME/.Xauthority:/root/.Xauthority \
-v /dev/:/dev/ \
-v $HOME/ros2_ws:/ros2_ws \
$IMAGE