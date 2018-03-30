#!/bin/bash
nvidia-docker run --interactive --tty --rm \
  --user $(id --user):$(id --group) \
  --env DISPLAY=${DISPLAY} \
  --env QT_X11_NO_MITSHM=1 \
  --workdir /home/${USER} \
  --volume /home/$USER:/home/$USER \
  --volume /etc/group:/etc/group:ro \
  --volume /etc/passwd:/etc/passwd:ro \
  --volume /etc/shadow:/etc/shadow:ro \
  --volume /etc/sudoers.d:/etc/sudoers.d:ro \
  --volume /tmp/.X11-unix:/tmp/.X11-unix:rw \
  sample-ros:latest /bin/bash
