#!/bin/bash

CONTAINER_NAME="jenkinsdockerproject"
sleep 20

if docker inspect -f '{{.State.Status}}' "$CONTAINER_NAME" | grep -q "exited"; >
    echo "Success"
else
    echo "Failed! Container still running"
    docker kill "$CONTAINER_NAME"
fi
