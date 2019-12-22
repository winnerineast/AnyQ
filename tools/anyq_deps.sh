#! /bin/bash

# 下载示例配置
if [ ! -d example ]; then
    wget --no-check-certificate http://anyq.bj.bcebos.com/example.tar.gz
    tar xzf example.tar.gz
fi
# 下载定制版本solr
# 在solr-4.10.3版本基础上加入了百度开源词法分析作为中文分词插件
# 用户可以使用此版本，或使用自己定制的solr版本
# 依赖python2.7(with json) jdk1.8以上
if [ ! -d solr-4.10.3-anyq ]; then
    wget --no-check-certificate http://anyq.bj.bcebos.com/solr-4.10.3-anyq.tar.gz
    tar xzf solr-4.10.3-anyq.tar.gz
fi
