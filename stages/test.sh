#!/bin/bash

WORKSPACE=$1
APPLICATION=$2

echo "**********************"
echo "****** Test App ******"
echo "**********************"

cd $WORKSPACE/$APPLICATION && mvn test
