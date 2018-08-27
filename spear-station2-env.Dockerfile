FROM ros:kinetic-robot
 
RUN apt-get update && apt-get install -y qt4-default libx264-dev \
                                         ros-kinetic-rqt \
                                         ros-kinetic-gscam \
                                         ros-kinetic-catch-ros \
                                         ros-kinetic-tf \
                                         gstreamer-0.1 \
                                         libgstreamer0.10-dev \
                                         libgstreamer-plugins-base0.10-dev \
                                         gstreamer0.10-plugins-good \
                                         python3-pip

# Install python module dependencies
# note: cython is a dependency for kivy and must be installed first
RUN python3 -m pip install --user cython \
                                  pygame \
 && python3 -m pip install --user kivy

SHELL ["/ros_entrypoint.sh", "bash", "-c"]
