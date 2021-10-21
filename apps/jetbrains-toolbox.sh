#!/bin/bash

su ${USER} -c 'wget -cqO jetbrains-toolbox.tar.gz "https://data.services.jetbrains.com/products/download?platform=linux&code=TBA"'
su ${USER} -c 'tar -xzf jetbrains-toolbox.tar.gz'
DIR=$(find . -maxdepth 1 -type d -name jetbrains-toolbox-\* -print | head -n1)
cd $DIR
su ${USER} -c './jetbrains-toolbox'
cd ..
rm -r $DIR
rm jetbrains-toolbox.tar.gz
