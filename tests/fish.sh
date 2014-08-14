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
