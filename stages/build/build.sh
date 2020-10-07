#!/bin/bash

WORKSPACE=/var/jenkins_home/workspace/pipeline-demo

# Copy the new jar to the build location
cp -f $WORKSPACE/java-app/target/*.jar $WORKSPACE/stages/build/

echo "***************************"
echo "** Building Docker Image **"
echo "***************************"

cd $WORKSPACE/stages/build/ && docker-compose -f docker-compose-build.yml build --no-cache
