#!/bin/bash
set -x
echo rebuild container
./build.sh
echo stopping old container
docker stop jenkins2
echo removing old container
docker rm jenkins2
echo start new container
docker run -d -p 8080:8080 -p 50000:50000 --name jenkins2 -v /home/ec2-user/jenkins_homes/jenkins2_home/:/var/jenkins_home jenkins2
