#!/bin/bash

APPLICATION_PATH=$1
PRODUCTION=$2

echo "***********************"
echo "****** Deploying ******"
echo "***********************"

docker cp $APPLICATION_PATH/target/*.jar $PRODUCTION:/app/app.jar
