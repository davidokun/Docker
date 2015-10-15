FROM david/centos7-base-java-8-server

MAINTAINER David Cuellar, davidokun99@gmail.com


ENV WILDFLY_VERSION=8.2.0.Final
ENV WILDFLY_FILENAME=wildfly-${WILDFLY_VERSION}
ENV WILDFLY_ARCHIVE_NAME=${WILDFLY_FILENAME}.tar.gz
ENV WILDFLY_DOWNLOAD_ADDRESS=http://download.jboss.org/wildfly/${WILDFLY_VERSION}/${WILDFLY_ARCHIVE_NAME}

ENV WILDFLY_HOME /usr/local/${WILDFLY_FILENAME}

RUN wget ${WILDFLY_DOWNLOAD_ADDRESS}

RUN tar xzf ${WILDFLY_ARCHIVE_NAME}

RUN mv ${WILDFLY_FILENAME} /usr/local/
RUN rm ${WILDFLY_ARCHIVE_NAME}

RUN rm ${WILDFLY_HOME}/standalone/configuration/standalone.xml
ADD standalone.xml ${WILDFLY_HOME}/standalone/configuration/

RUN rm ${WILDFLY_HOME}/standalone/configuration/mgmt-users.properties
ADD mgmt-users.properties ${WILDFLY_HOME}/standalone/configuration/

RUN rm ${WILDFLY_HOME}/standalone/configuration/mgmt-groups.properties
ADD mgmt-groups.properties ${WILDFLY_HOME}/standalone/configuration/

RUN chmod a+x ${WILDFLY_HOME}/bin/standalone.sh
