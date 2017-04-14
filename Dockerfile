# First docker file from bolingcavalry
# VERSION 0.0.1
# Author: bolingcavalry

#基础镜像
FROM tomcat:7.0.77-jre8

#作者
MAINTAINER BolingCavalry <zq2599@gmail.com>

#定义工作目录
ENV WORK_PATH /usr/local/tomcat/conf

#定义要替换的文件名
ENV CONF_FILE_NAME tomcat-users.xml

#删除原文件
RUN rm $WORK_PATH/$CONF_FILE_NAME

#复制文件
COPY  ./$CONF_FILE_NAME $WORK_PATH/