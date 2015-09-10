FROM centos:7

MAINTAINER David Cuellar, davidokun99@gmail.com

RUN yum update -y
RUN yum clean all
RUN yum -y install wget
RUN yum -y install unzip
RUN yum -y install tar
RUN yum -y install gettext
RUN yum -y install openssh-server
RUN yum -y install yum-utils
RUN yum -y install net-tools
RUN mkdir /var/run/sshd
RUN /usr/bin/ssh-keygen -A
RUN echo 'root:secret' | chpasswd
RUN wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-x64.tar.gz"
RUN tar xzf jdk-8u60-linux-x64.tar.gz
RUN rm jdk-8u60-linux-x64.tar.gz
RUN mv jdk1.8.0_60 /usr/local/
ENV JAVA_HOME /usr/local/jdk1.8.0_60/
ENV PATH "$PATH":${JAVA_HOME}/bin:.:
RUN ln -s /${JAVA_HOME}/bin/jjs /usr/bin/jjs
