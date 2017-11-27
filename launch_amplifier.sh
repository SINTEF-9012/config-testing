#!/bin/bash

echo "Launcing amplifier!"
cd stamp-samples/xwiki-mono
docker run -it -v $(pwd):/root/workingdir songhui/stamp-config-amp
