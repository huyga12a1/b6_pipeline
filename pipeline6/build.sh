#!/bin/bash
# Copy the new jar to the build location
export BUILD_TAG=test
cp -f ./java-app/target/*.jar .
echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"
docker-compose -f docker-compose-build.yml build #--no-cache
