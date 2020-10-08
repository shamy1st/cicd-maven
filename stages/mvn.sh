#!/bin/bash

WORKSPACE=/var/jenkins_home/workspace/pipeline-demo

echo "**************************"
echo "****** Building jar ******"
echo "**************************"

docker run --rm -v $WORKSPACE/java-app:/app -v /tmp/root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
