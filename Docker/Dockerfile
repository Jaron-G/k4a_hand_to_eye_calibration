FROM do.nark.eu.org/osrf/ros:noetic-desktop-full
ENV DEBIAN_FRONTEND=noninteractive

# System layer
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y wget && \
    apt-get install -y iputils-ping && \
    apt-get -y install build-essential && \
    apt install -y cmake && \
    apt install -y tree && \
    apt install -y gdb && \
    apt-get install -y git && \
    apt-get install -y python3-pip

# RUN apt-get install -y curl && \
#     apt-get install -y software-properties-common && \
#     apt-get update && \
#     # curl -sSL https://packages.microsoft.com/keys/microsoft.asc | apt-key add - && \
#     # apt-add-repository https://packages.microsoft.com/ubuntu/18.04/prod && \
#     # apt-get update && \
#     curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add - && \
#     apt-add-repository https://packages.microsoft.com/ubuntu/18.04/prod && \
#     curl -sSL https://packages.microsoft.com/config/ubuntu/18.04/prod.list | sudo tee /etc/apt/sources.list.d/microsoft-prod.list && \
#     curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add - && \
#     apt-get update && \
#     apt install libk4a1.3-dev && \
#     apt install k4a-tools=1.3.0 && \
#     # apt install -y libk4a1.4 && \
#     # apt install -y libk4a1.4-dev && \
#     apt install -y k4a-tools

# Dependencies layer # Calibration
RUN mkdir -p /catkin_ws/src && \
    cd /catkin_ws/src && \
    git clone -b noetic-devel https://github.com/ros-industrial/universal_robot.git && \
    git clone https://github.com/UniversalRobots/Universal_Robots_ROS_Driver && \
    git clone https://github.com/microsoft/Azure_Kinect_ROS_Driver && \
    git clone -b noetic-devel https://github.com/pal-robotics/aruco_ros.git && \
    git clone https://github.com/marcoesposito1988/easy_aruco && \
    git clone -b noetic-devel https://github.com/lagadic/vision_visp.git && \
    git clone https://github.com/IFL-CAMP/easy_handeye 

# RUN mkdir -p /catkin_ws/src && \
#     cd /catkin_ws/src && \
#     git clone -b calibration_devel https://github.com/fmauch/universal_robot.git && \
#     git clone https://github.com/UniversalRobots/Universal_Robots_ROS_Driver && \
#     git clone https://github.com/microsoft/Azure_Kinect_ROS_Driver && \
#     git clone -b noetic-devel https://github.com/pal-robotics/aruco_ros.git && \
#     git clone https://github.com/marcoesposito1988/easy_aruco && \
#     git clone -b noetic-devel https://github.com/lagadic/vision_visp.git && \
#     git clone https://github.com/IFL-CAMP/easy_handeye 
   
# Use rosdep to install all dependencies according to the package.xml files in all src folders
# And compile the workspace
# RUN cd /catkin_ws && \
#     rosdep install --from-paths src --ignore-src -r -y 
    # /bin/bash -c '. /opt/ros/kinetic/setup.bash; catkin_make'

# RUN echo ". /opt/ros/kinetic/setup.bash" >> ~/.bashrc
# RUN echo ". /catkin_ws/devel/setup.bash" >> ~/.bashrc


RUN echo "ALL Done"




