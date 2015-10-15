FROM david/centos7-base-wildfly-8-server

MAINTAINER David Cuellar, davidokun99@gmail.com

# Start Wildfly with full configuration and bind to all interfaces
ENTRYPOINT ${WILDFLY_HOME}/bin/standalone.sh -c standalone-full.xml -b 0.0.0.0
