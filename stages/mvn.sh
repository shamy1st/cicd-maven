#!/bin/bash

WORKSPACE=/Users/elshamy/Documents/courses/jenkins/cicd/pipeline

echo "**************************"
echo "****** Building jar ******"
echo "**************************"

docker run --rm -v $WORKSPACE/java-app:/app -v $WORKSPACE/mvn_repo/:/root/.m2/ -w /app maven:3-alpine "$@"
