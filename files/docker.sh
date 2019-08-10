#!/bin/bash
# 快速进入docker容器脚本
echo "entering docker "$1

CONTAINER_ID=$(docker ps|grep $1|awk '{print $1}')
echo "container id "${CONTAINER_ID}
docker exec -it ${CONTAINER_ID} /bin/bash