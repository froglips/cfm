#!/bin/bash

#* ***************
#* Source config file
#* ***************
. ./cfm.conf
#* ***************

#* ***************
#* Source private config file
#* ***************
if [[ -f ./cfm_private.conf ]]
then
  . ./cfm_private.conf
fi
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
    echo "Match: ${i} to ${BASH_REMATCH[@]}"    
    rmt_cmt_get ${TARGET_USER} ${TARGET_SERVER} ${i}
    rmt_cmt_put ${DEST_USER} ${DEST_SERVER} ${i}
  fi
done
