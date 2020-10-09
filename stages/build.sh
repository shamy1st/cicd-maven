#!/bin/bash

APPLICATION=$3
WORKSPACE=$1
JOB=$2

echo "**************************"
echo "****** Building Jar ******"
echo "**************************"

cd $WORKSPACE/$JOB/$APPLICATION && mvn -B -DskipTests clean package
