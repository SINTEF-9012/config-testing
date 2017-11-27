#!/bin/bash

SUT_URL="https://github.com/songhui/stamp-samples.git"
SUT_NAME="stamp-samples"

if [[ -d $SUT_NAME ]]; then
	echo "stamp-sampleshas been already downloaded, cleaning, updating..."
	cd $SUT_NAME
	git reset --hard
	git clean -fd
	git pull
else
	echo "stamp-samples has not beed downloaded..."
	git clone $SUT_URL
fi
