docker run --init -it -d \
  --runtime=nvidia --gpus all \
  -v /etc/localtime:/etc/localtime:ro \
  -v /etc/timezone:/etc/timezone:ro \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e DISPLAY=$DISPLAY \
  -e "QT_X11_NO_MITSHM=1" \
  msckf_ros:kinetic

docker run --init -it \
  --runtime=nvidia --gpus 'all,"capabilities=compute,utility,graphics"' \
  -v /etc/localtime:/etc/localtime:ro \
  -v /etc/timezone:/etc/timezone:ro \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e DISPLAY=$DISPLAY \
  -e "QT_X11_NO_MITSHM=1" \
  -e "QT_OPENGL=software" \
  -e "LIBGL_ALWAYS_SOFTWARE=1" \
  msckf_ros:kinetic