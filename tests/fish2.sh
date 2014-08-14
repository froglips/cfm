#!/bin/bash

FISH="/this/is/fun/abc_def_123.obj"
FISHREGEX='^(/.*/)([[:alpha:]]{3})_([[:alpha:]]{3})_([[:digit:]]{3})\.(obj|txt)'

function wellnow {
  if [[ ${FISH} =~ ${2} ]]
  then
    echo ${BASH_REMATCH[1]}
    echo ${BASH_REMATCH[4]}
  fi
}

wellnow ${FISH} ${FISHREGEX}

if [[ "/home/private/target_files/filename_11_aa.txt" =~ ^(/.*/)filename_([[:digit:]]{2})_([[:alpha:]]{2})\.(obj|cpp|txt) ]]
then
  echo "Hello"
fi
