#!/bin/bash

echo "Launching amplifier!"
cd stamp-samples/xwiki-mono
HOST_JENKINS_HOME="/home/sintef/config-tool/jenkins_volumes/jenkins_home/"
CONT_JENKINS_HOME="/var/jenkins_home/"
CPWD=$(pwd)
HOST_STAMP_DIR="${CPWD/$CONT_JENKINS_HOME/$HOST_JENKINS_HOME}"
echo "Calculated host directory ${HOST_STAMP_DIR}"
docker run -v ${HOST_STAMP_DIR}:/root/workingdir songhui/stamp-config-amp
