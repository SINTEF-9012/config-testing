#!/bin/bash

echo "Launching amplifier!"
cd stamp-samples/xwiki-mono
#HOST_JENKINS_HOME="/home/sintef/config-tool/jenkins_volumes/jenkins_home/"
#CONT_JENKINS_HOME="/var/jenkins_home/"
#CPWD=$(pwd)
#HOST_STAMP_DIR="${CPWD/$CONT_JENKINS_HOME/$HOST_JENKINS_HOME}"
#echo "Calculated host directory ${HOST_STAMP_DIR}"
#pwd is actually evalutated in the container, but the container is run on the host, thus there is mismatch for paths
#created a symbolin link to the host to point(/var/jenkins_home) to /home/sintef/config-tool/jenkins_volumes/jenkins_home/
#urgly urgly!!!
docker run -v $(pwd):root/workingdir songhui/stamp-config-amp
