#!/bin/bash

USER=$1
APPS_DIR=apps
UTILS_DIR=utils
LOG=./log.txt

if [ -z "${USER}" ]
then
  echo "Required parameters not entered (install.sh [username])"
  exit 0
fi

echo "===========================================" >> "$LOG"
date +"Start install - %F %T" >> "$LOG"
echo "===========================================" >> "$LOG"

echo "Remove unused applications" | tee -a "$LOG"
./$UTILS_DIR/remove-unused.sh >> $LOG

echo "Update && upgrade" | tee -a "$LOG"
./$UTILS_DIR/update.sh >> $LOG

echo "Fix audio" | tee -a "$LOG"
./$UTILS_DIR/fix-audio.sh >> $LOG

echo "Install base applications" | tee -a "$LOG"
./$UTILS_DIR/base.sh >> $LOG

echo "Install applications from $APPS_DIR dir" | tee -a "$LOG"
APPS=`ls $APPS_DIR`
for APP in ${APPS[@]}
do
  echo "Install $APP" | tee -a "$LOG"
  ./$APPS_DIR/$APP >> $LOG
done

echo "Clean" | tee -a "$LOG"
./$UTILS_DIR/clean.sh >> $LOG

echo "===========================================" >> "$LOG"
date +"Finished - %F %T" >> "$LOG"
echo "===========================================" >> "$LOG"

errors=`cat "$LOG" | grep "E:"`
if [[ -n "${errors}" ]]; then
    echo "Installation finished with errors"
    exit 1
fi
