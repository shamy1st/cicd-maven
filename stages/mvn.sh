#!/bin/bash

APPLICATION=java-app
JOB=pipeline-demo
WORKSPACE=/var/jenkins_home/workspace

echo "**************************"
echo "****** Building jar ******"
echo "**************************"

#sudo docker run --rm -v $WORKSPACE/java-app:/app -v /tmp/root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"

cd $WORKSPACE/$JOB/$APPLICATION && "$@"
