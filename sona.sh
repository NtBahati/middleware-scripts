#!/bin/bash
#Auth:
#Date: Feb 22 2023
#How to install and configure SonarQube on CentOS 7
#Follow below steps successively to install sonarqube on your centOS server. This process need to be run as a regular user (Sonarqube doesnt work w#hen you start it as root user).
#su - vagrant
#Step 1: Java 11 installation
#The only prerequisite for running SonarQube is to have Java (Oracle JRE 11 or OpenJDK 11) installed on your machine. To install OpenJDK 11, run the following commands
sudo yum update -y
sudo yum install java-11-openjdk-devel -y
sudo yum install java-11-openjdk -y
#Step 2: Download SonarQube latest versions on your server
#Let’s navigate to the /opt directory before downloading
cd /opt
#If wget is not installed on your system, run the command to install it. Then download SonarQube package:
sudo yum install wget -y
sudo yum install wget -y
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
#Step 3: Extract packages
#If unzip is not installed on your system, run the command
yum install unzip
sudo unzip /opt/sonarqube-9.3.0.51899.zip
#To install it. Now, unzip the previously installed package:
sudo unzip /opt/sonarqube-9.3.0.51899.zip
#Step 4: Change ownership to the user and Switch to Linux binaries directory to start service
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
cd /opt
cd sonarqube-9.3.0.51899
cd bin
cd linux-x86-64
# ./sonar.sh start
