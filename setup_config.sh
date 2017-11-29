#!/bin/bash

DEFAULT_SUT="xwiki-platform/xwiki-platform-distribution/xwiki-platform-distribution-flavor/xwiki-platform-distribution-flavor-test/xwiki-platform-distribution-flavor-test-misc"
DEFAULT_PLUGIN="exe_plugins/maven"
DEFAULT_ENV="environments/xwiki-platform-amplify"

SUT=$1
PLUGIN=$2
ENV=$3

echo "Patching config.ini"
sed -i "s,${DEFAULT_SUT},${SUT},g" ./testframework/config.ini
sed -i "s,${DEFAULT_PLUGIN},${PLUGIN},g" ./testframework/config.ini
sed -i "s,${DEFAULT_ENV},${ENV},g" ./testframework/config.ini

echo "Patching set_up_amplifier.sh"
sed -i "s,${DEFAULT_ENV},${ENV},g" ./set_up_amplifier.sh

echo "Patching set_up_ctf.sh"
sed -i "s,${DEFAULT_ENV},${ENV},g" ./set_up_ctf.sh