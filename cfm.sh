#!/bin/bash

#* ***************
#* Source config file
#* ***************
. ./cfm.conf
#* ***************

#* ***************
#* Source functions file
#* ***************
. ./cfm.lib
#* ***************

#* Preserve rundate for log entries
RunDate=$(date +'%m%d%Y_%H%M%S')

declare -a DownLoadArr

rmt_cmd_ls ${TARGET_USER} ${TARGET_SERVER} ${TARGET_PATH}

for i in "${DownLoadArr[@]}"
do
echo "Check: ${i}"
  if [[ ${i} =~ ${TARGET_FILE_REGEX} ]]
  then
    echo "${i}: ${BASH_REMATCH[@]}"    
  fi
done
