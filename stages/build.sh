#!/bin/bash

APPLICATION=java-app
JOB=$1
WORKSPACE=/var/jenkins_home/workspace

echo "**************************"
echo "****** Building Jar ******"
echo "**************************"

cd $WORKSPACE/$JOB/$APPLICATION && mvn -B -DskipTests clean package
