FROM david/centos7-base-java-8-server

MAINTAINER David Cuellar, davidokun99@gmail.com

ENV SONAR_VERSION=5.1.2
ENV COBERTURA_VERSION=1.6.3

RUN wget https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-${SONAR_VERSION}.zip
RUN unzip sonarqube-${SONAR_VERSION}.zip
RUN mkdir /usr/local/sonar
RUN mv sonarqube-${SONAR_VERSION} /usr/local/sonar/
RUN rm sonarqube-${SONAR_VERSION}.zip

RUN wget http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-cobertura-plugin/${COBERTURA_VERSION}/sonar-cobertura-plugin-${COBERTURA_VERSION}.jar
RUN mv sonar-cobertura-plugin-${COBERTURA_VERSION}.jar /usr/local/sonar/sonarqube-${SONAR_VERSION}/extensions/plugins/




