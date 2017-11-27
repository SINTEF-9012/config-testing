#!/bin/bash

echo "Launching amplifier!"
cd stamp-samples/xwiki-mono
docker run -v $(pwd):/root/workingdir songhui/stamp-config-amp
