#!/bin/bash


docker rm -f ros_18.04 ||
docker rm -f ros_18.04:latest ||

xhost +local:root
 docker  run  --rm -it -d --name ros_18.04 --privileged  --volume=/dev:/dev --gpus all --net=host -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY -e QT_X11_NO_MITSHM=1 tjdalsckd/ros_18.04:latest bash &&
docker cp mm_gpu_voxel ros_18.04:/root/workspace;
docker cp gpu_voxel_indy ros_18.04:/root/workspace;
docker cp ~/.ssh/id_rsa ros_18.04:/root/.ssh/
docker cp ~/.ssh/id_rsa.pub ros_18.04:/root/.ssh/
xhost +local:root
bash multi_terminal.sh

