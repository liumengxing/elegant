#!/bin/bash
# 快速进入k8s容器脚本
echo "entering docker "$1

CONTAINER_ID=$(kubectl get pods -n ns-retail-dev|grep v7-$1|awk '{print $1}')
echo "container id "${CONTAINER_ID}
kubectl exec -it ${CONTAINER_ID} -n ns-retail-dev /bin/bash
