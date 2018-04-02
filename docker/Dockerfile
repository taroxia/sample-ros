FROM osrf/ros:kinetic-desktop-full

RUN apt-get update \
  && apt-get install --yes --no-install-recommends \
    sudo \
  && rm -rf /var/lib/apt/lists/*

RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo

USER docker

# nvidia-docker hooks
LABEL com.nvidia.volumes.needed="nvidia_driver"
ENV PATH /usr/local/nvidia/bin:${PATH}
ENV LD_LIBRARY_PATH /usr/local/nvidia/lib:/usr/local/nvidia/lib64:${LD_LIBRARY_PATH}
