#!/bin/bash

which unattended-upgrades || /usr/bin/apt-get --assume-yes install unattended-upgrades

cp 02periodic /etc/apt/apt.conf.d/02periodic
cp 50unattended-upgrades /etc/apt/apt.conf.d/50unattended-upgrades
cp local /etc/apt/apt.conf.d/local
cp unattended$1 /etc/cron.d/unattented$1


cp required-reboot.sh /usr/local/sbin/required_reboot.sh
cp required-reboot.conf /etc/zabbix/zabbix_agentd.conf.d.local/required-reboot.conf
/etc/init.d/zabbix-agent restart
