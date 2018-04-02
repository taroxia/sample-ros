#!/bin/bash
nvidia-docker run --interactive --tty --rm \
  --user $(id --user):$(id --group) \
  --env DISPLAY=${DISPLAY} \
  --env QT_X11_NO_MITSHM=1 \
  --volume ${PWD}:/workspace \
  --volume /tmp/.X11-unix:/tmp/.X11-unix:rw \
  sample-ros:latest /bin/bash
