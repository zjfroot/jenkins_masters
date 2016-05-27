#!/bin/bash
sudo docker stop jenkins2
sudo docker rm jenkins2
sudo docker run -d -p 8000:8080 -p 5000:50000 --name jenkins2 -v /home/zjfroot/jenkins2_home/:/var/jenkins_home zjfroot/jenkins2
