#!/bin/bash

wget -q "https://zoom.us/client/latest/zoom_amd64.deb"
apt-get install ./zoom_amd64.deb -y
rm zoom_amd64.deb
