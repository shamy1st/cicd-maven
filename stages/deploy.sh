#!/bin/bash

WORKSPACE=/var/jenkins_home/workspace/pipeline-demo
PRODKEY=/tmp/prod-key
PRODUCTION=production-container

echo app > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth

docker cp /tmp/.auth $PRODUCTION:/tmp/.auth
docker cp $WORKSPACE/stages/deploy/publish.sh $PRODUCTION:/tmp/publish.sh
docker exec $PRODUCTION /tmp/publish.sh
