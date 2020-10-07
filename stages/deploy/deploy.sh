#!/bin/bash

WORKSPACE=/Users/elshamy/Documents/courses/jenkins/cicd/pipeline
PRODKEY=/Users/elshamy/Documents/courses/jenkins/cicd/centos8/prod-key

echo app > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth

docker cp /tmp/.auth production-host:/tmp/.auth
docker cp $WORKSPACE/stages/deploy/publish.sh production-host:/tmp/publish.sh
docker exec production-host /tmp/publish.sh
