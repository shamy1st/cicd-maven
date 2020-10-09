#!/bin/bash

APPLICATION=java-app
JOB=pipeline-demo
WORKSPACE=/var/jenkins_home/workspace

echo "**************************"
echo "****** Building jar ******"
echo "**************************"

cd $WORKSPACE/$JOB/$APPLICATION && mvn test
