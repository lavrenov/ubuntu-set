#!/bin/bash

apt-get purge seahorse -y
apt-get purge firefox firefox-* -y

SNAP=`df | grep snapd | awk '{print $6}'`
if [ $SNAP ]
then
  list=(`snap list | grep -v "core" | awk '{print $1}' | tr "\n" " "`)
  unset "list[0]"

  for item in ${list[@]}
  do
    if [[ "$item" != "snapd" ]]
    then
      snap remove $item
    fi
  done
  snap remove `snap list | grep "core"`

  umount -l $SNAP
  apt-get autoremove --purge snapd gnome-software-plugin-snap -y
  pkill gnome-software
  rm -r /var/cache/app-info
  appstreamcli refresh --force --verbose

  rm -rf ~/snap
  rm -rf /snap
  rm -rf /var/snap
  rm -rf /var/lib/snapd
fi
