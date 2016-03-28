# docker-zabbix-java-gateway

This is docker image with Zabbix 3.0 java gateway.

Docker image is located at [varsy/zabbix-java-gateway](https://hub.docker.com/r/varsy/zabbix-java-gateway/).

You could use the [varsy/zabbix-server](https://hub.docker.com/r/varsy/zabbix-server/) with it.

You need to expose the port 10052 to use it.

Just run the container and have fun.

For example:
```
/usr/bin/docker run --rm -p 10052:10052 varsy/zabbix-java-gateway
```
