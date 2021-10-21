#!/bin/bash

apt-get install dirmngr gnupg apt-transport-https ca-certificates software-properties-common -y
curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add - &> /dev/null
add-apt-repository "deb https://download.sublimetext.com/ apt/stable/" -y
apt-get install sublime-text -y
