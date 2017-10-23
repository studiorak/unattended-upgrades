#!/bin/bash

which unattended-upgrades || /usr/bin/apt-get --assume-yes install unattended-upgrades

cp 02periodic /etc/apt/apt.conf.d/02periodic || echo "!!! ERREOR !!!"
cp 50unattended-upgrades /etc/apt/apt.conf.d/50unattended-upgrades || echo "!!! ERREOR !!!"
cp local /etc/apt/apt.conf.d/local || echo "!!! ERREOR !!!"
cp unattended$1 /etc/cron.d/unattented$1 || echo "!!! ERREOR !!!"

cp required-reboot.sh /usr/local/sbin/required_reboot.sh  || echo "!!! ERREOR !!!"
cp required-reboot.conf /etc/zabbix/zabbix_agentd.conf.d.local/required-reboot.conf || echo "!!! ERREOR !!!"

/etc/init.d/zabbix-agent restart
