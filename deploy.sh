#!/bin/bash

/usr/bin/apt-get --assume-yes install unattended-upgrades

cp 02periodic /etc/apt/apt.conf.d/02periodic
cp 50unattended-upgrades /etc/apt/apt.conf.d/50unattended-upgrades
cp local /etc/apt/apt.conf.d/local
cp snpgroup$1 /etc/cron.d/snpgroup$1


cp required-reboot.sh /usr/local/sbin/required_reboot.sh
cp required-reboot.conf /etc/zabbix/zabbix_agentd.d/required-reboot.conf
/etc/init.d/zabbix-agent restart
