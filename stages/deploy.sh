#!/bin/bash

WORKSPACE=$1
APPLICATION=$2

PRODUCTION=production-container
PRODKEY=/tmp/prod-key

docker cp $WORKSPACE/$APPLICATION/target/*.jar $PRODUCTION:/app/app.jar

