

xhost +

```
export workspace="${HOME}/workspace"
<!-- git clone -->
docker build - < Dockerfile -t mpv
docker run \
    --rm \
    --privileged \
    -e DISPLAY=$DISPLAY \
    -e XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $XDG_RUNTIME_DIR:$XDG_RUNTIME_DIR \
    -v ${workspace}/mpv:/tmp/mpv \
    -v ${workspace}/FFmpeg:/tmp/FFmpeg \
    --cap-add SYS_ADMIN --volume="$HOME/.Xauthority:/root/.Xauthority:rw" \
    -it mpv:latest \
    bash
```
