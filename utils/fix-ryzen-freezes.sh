#!/bin/bash

sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT=".*"/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash processor.max_cstate=1 rcu_nocbs=0-11 idle=poll"/g' /etc/default/grub
update-grub