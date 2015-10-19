#!/usr/bin/env bash
### START - JXcore Test Server --------
### Testing environment prepares separate packages for each node.
### Package builder calls this script with each node's IP address
### Make sure multiple calls to this script file compiles the application file

NORMAL_COLOR='\033[0m'
RED_COLOR=''
GREEN_COLOR='\033[0;32m'
GRAY_COLOR='\033[0;37m'

LOG() {
  COLOR="$1"
  TEXT="$2"
  echo -e "${COLOR}$TEXT ${NORMAL_COLOR}"
}


ERROR_ABORT() {
  if [[ $? != 0 ]]
  then
    LOG $RED_COLOR "clone aborted\n"
    exit -1
  fi
}
### END - JXcore Test Server   --------

cd Github;ERROR_ABORT
rm -rf testBuildOrg;ERROR_ABORT
wget {{REPOSITORY}};ERROR_ABORT
unzip {{BRANCH_NAME}};ERROR_ABORT
mv {{COMBINED_NAME}} testBuildOrg;ERROR_ABORT