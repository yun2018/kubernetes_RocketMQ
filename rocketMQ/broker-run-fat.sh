#!/bin/sh

#broker运行脚本

myConf=/opt/rocketmq-4.4.0/conf/my.properties

cp /usr/lib/jvm/java-1.8.0-openjdk-1.8.0.201.b09-2.el7_6.x86_64/jre/lib/ext/sunjce_provider.jar /opt/rocketmq-4.4.0/lib/
rm -f ${myConf}
cp '/opt/rocketmq-4.4.0/conf/broker.conf' ${myConf}
echo "brokerIP1=192.168.200.31" >> ${myConf}
echo -e "listenPort=30022" >> ${myConf}
cat ${myConf}
sh mqbroker -n service-rocketmq-ns.rocketmq:9876 -c ${myConf}


