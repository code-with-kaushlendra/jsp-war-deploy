#!/bin/bash

# Download Tomcat
wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.85/bin/apache-tomcat-9.0.85.tar.gz
tar -xvzf apache-tomcat-9.0.85.tar.gz
mv apache-tomcat-9.0.85 tomcat

# Deploy your WAR
rm -rf tomcat/webapps/*
cp ROOT.war tomcat/webapps/ROOT.war

# Run Tomcat
chmod +x tomcat/bin/catalina.sh
tomcat/bin/catalina.sh run
