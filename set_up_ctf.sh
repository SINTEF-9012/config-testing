#!/bin/bash

echo "Copying apmlification results to the CTF environment folder"
rm -rf environments/xwiki-platform-amplify/*
cp -R stamp-samples/xwiki-mono/build/* environments/xwiki-platform-amplify/