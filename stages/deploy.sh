#!/bin/bash

APPLICATION_PATH=$1
PRODUCTION=$2

docker cp $APPLICATION_PATH/target/*.jar $PRODUCTION:/app/app.jar
