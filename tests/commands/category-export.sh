#!/bin/bash -x
source functions.sh

install_db
install_data
cd $MOODLEDIR

if $MOOSHCMD  category-export 1 | grep "oldid='1'"; then
  exit 0
else
  exit 1
fi
