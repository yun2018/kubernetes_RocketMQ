#!/bin/sh

# broker初始化

nameServer=service-rocketmq-ns.rocketmq:9876

# topicList
sh mqadmin topicList -n ${nameServer}

# clusterList
sh mqadmin clusterList -n ${nameServer}

# 设置主题
# 主题：hello
sh mqadmin updateTopic -n ${nameServer} -c DefaultCluster -r  16 -w 16 -p 6 -t hello
# 主题：dbSync
sh mqadmin updateTopic -n ${nameServer} -c DefaultCluster -r  16 -w 16 -p 6 -t dbSync
# 主题：todoAsync
sh mqadmin updateTopic -n ${nameServer} -c DefaultCluster -r  16 -w 16 -p 6 -t todoAsync





