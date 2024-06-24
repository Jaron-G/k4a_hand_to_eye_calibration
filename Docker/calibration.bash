xhost local:root
XAUTH=/tmp/.docker.xauth
docker run --rm -it \
    --name=calibration_container\
    --env="DISPLAY=$DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --env="XAUTHORITY=$XAUTH" \
    --volume="/home/$USER/catkin_ws/src/k4a_hand_to_eye_calibration:/catkin_ws/src/k4a_hand_to_eye_calibration" \
    --volume="/dev/bus/usb:/dev/bus/usb" \
    --net=host \
    --privileged \
    ros-noetic-calibration:1 \
    bash

echo "Done."