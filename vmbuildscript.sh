#!/bin/bash

echo installing - apt-get update
apt-get update
echo installing - nodejs npm
apt-get install nodejs npm

# Locate msjdk and install its required packages
# Valid values are only '18.04' and '20.04'
# For other versions of Ubuntu, please use the tar.gz package
ubuntu_release=`lsb_release -rs`
wget https://packages.microsoft.com/config/ubuntu/${ubuntu_release}/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
echo installing msopenjdk-11 - apt-get install apt-transport-https
apt-get install apt-transport-https
apt-get update
echo installing msopenjdk-11- msopenjdk-11
apt-get install msopenjdk-11

echo running - npm install
npm install

echo clone jhipster-sample-app
git clone https://github.com/SandraAhlgrimm/jhipster-sample-jHipsterOnArm

# manual step: set the database in jhipster-sample-app/src/main/resources/config/application-prod.yml
#  datasource:
#   type: com.zaxxer.hikari.HikariDataSource
#    url: jdbc:postgresql://localhost:5432/jHipsterOnArm
#    username: jHipsterOnArm
#    password:

echo start jhipster-sample-app
cd jhipster-sample-jHipsterOnArm
./mvnw -Pprod -DskipTests clean verify
