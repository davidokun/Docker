FROM davidokun/centos7-base-java-server

MAINTAINER David Cuellar, davidokun99@gmail.com

ADD mongodb.repo  /etc/yum.repos.d/

RUN yum install -y mongodb-org

RUN mkdir /data && mkdir /data/db
