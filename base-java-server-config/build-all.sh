#!/usr/bin/env bash

cd base-java-server/ &&
sh build.sh &&
cd ../base-wildfly-server/ &&
sh build.sh &&
cd ../base-mongodb-server/ &&
sh build.sh &&
cd ../base-sonar-server/ &&
sh build.sh &&
cd ../app-server/ &&
sh build.sh &&
cd ../db-server/ &&
sh build.sh &&
cd ../sonar-server/ &&
sh build.sh

