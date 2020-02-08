export MATTERPORT_DATA_DIR=/mnt/local/data/matterport3d/v1/scans/
docker run -it -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix \
    --mount type=bind,source=$MATTERPORT_DATA_DIR,target=/root/mount/Matterport3DSimulator/data/v1/scans,readonly \
    --volume `pwd`:/root/mount/Matterport3DSimulator \
    --env QT_X11_NO_MITSHM=1 \
    mattersim:9.2-devel-ubuntu18.04
