#!/bin/bash

WORKSPACE=$1
APPLICATION=$3

echo "**************************"
echo "****** Building Jar ******"
echo "**************************"

cd $WORKSPACE/$APPLICATION && mvn -B -DskipTests clean package
