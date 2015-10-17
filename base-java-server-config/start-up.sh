#!/usr/bin/env bash
docker run -d -p 27017:27017 --name mongo-server david/centos7-db-server
docker run -d -p 8080:8080 -p 8787:8787 -p 9990:9990 --name wildfly-server --link mongo-server:mongo-server david/centos7-app-server
docker run -d -p 9000:9000 -p 9092:9092 --name sonar-server david/centos7-sonar-server
