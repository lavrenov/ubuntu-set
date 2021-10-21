#!/bin/bash

apt-get install --reinstall unity-control-center
apt-get purge activity-log-manager
apt-get purge gnome-power-manager

rm /usr/share/applications/gnome-sharing-panel.desktop
rm /usr/share/applications/unity-sharing-panel.desktop
