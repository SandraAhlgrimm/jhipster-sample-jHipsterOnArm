#!/bin/bash

sudo apt-get install msopenjdk-11
sudo apt install nodejs npm
sudo npm install
sudo apt-get install apt-transport-https
sudo apt-get update
sudo ./mvnw -Pprod clean verify