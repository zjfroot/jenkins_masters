#!/bin/bash
docker stop jenkins2
docker rm jenkins2
docker run -d -p 8080:8080 -p 50000:50000 --name jenkins2 -v /home/ec2-user/jenkins_homes/jenkins2_home/:/var/jenkins_home jenkins2
