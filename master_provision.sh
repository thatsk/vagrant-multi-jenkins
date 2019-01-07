#! /bin/bash

#prepare for jenkins installation
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update

#install openjdk 
sudo  apt install openjdk-8-jdk -y

#install jenkins
sudo apt-get -y install jenkins

