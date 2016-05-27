#!/bin/bash
#set -e
set -x

for i in {0..9}
do
  sudo docker stop jenkins2-$i
  sudo docker rm jenkins2-$i
done 


for i in {10..15}
do
  sudo docker stop jenkins2-$i
  sudo docker rm jenkins2-$i
done

for i in {0..9}
do
  sudo docker run -d -p 800$i:8080 -p 500$i:50000 --name jenkins2-$i -v /data/jenkins_homes/jenkins2_home_$i/:/var/jenkins_home zjfroot/jenkins2
  #echo $i
  sleep 60
done

for i in {10..15}
do
  sudo docker run -d -p 80$i:8080 -p 50$i:50000 --name jenkins2-$i -v /data/jenkins_homes/jenkins2_home_$i/:/var/jenkins_home zjfroot/jenkins2
  #echo $i
  sleep 60
done

