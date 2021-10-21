#!/bin/bash

echo "deb http://repo.yandex.ru/yandex-disk/deb/ stable main" | tee -a /etc/apt/sources.list.d/yandex-disk.list
wget -q http://repo.yandex.ru/yandex-disk/YANDEX-DISK-KEY.GPG -O- | apt-key add - &> /dev/null
apt-get update
apt-get install yandex-disk -y
su ${USER} -c 'mkdir ~/Yandex.Disk'
add-apt-repository ppa:slytomcat/ppa -y
apt-get install yd-tools -y
