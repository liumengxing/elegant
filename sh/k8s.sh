#!/bin/bash
# 快速进入k8s容器脚本
echo "entering docker "$1

CONTAINER_ID=$(./kubectl -s '172.20.176.190:8080' get pods -n ns-retail-dev|grep v7-$1|awk '{print $1}')
echo "container id "${CONTAINER_ID}
./kubectl -s '172.20.176.190:8080' exec -it ${CONTAINER_ID} -n ns-retail-dev /bin/bash
