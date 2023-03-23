#!/bin/bash

echo verifying target files
ls -l target
echo installing - msopenjdk-11
apt-get install msopenjdk-11
echo installing - nodejs npm
apt-get install nodejs npm
echo installing - npm install
npm install
echo installing - apt-get install apt-transport-https
apt-get install apt-transport-https
echo installing - apt-get update
apt-get update