#!/bin/bash

rccheck() {
   if [ $? != 0 ]; then
      echo "Error! Stopping the script."
      exit 1
   fi
}

mkdir -p /var/run/zabbix

trap "service zabbix-java-gateway stop" SIGINT SIGTERM SIGHUP
service zabbix-java-gateway start ; rccheck
sleep 5
tail -qF /var/log/zabbix/zabbix_java_gateway.log &
wait
