#!/bin/bash

echo "Copying environments to amplify"
rm -rf stamp-samples/xwiki-mono/repo/*
cp -R environments/xwiki-platform-amplify/* stamp-samples/xwiki-mono/repo/