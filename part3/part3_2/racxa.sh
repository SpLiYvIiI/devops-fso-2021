#!/bin/bash
echo "enter your docker username : "

read username 

echo "enter your docker password : "

read -s password

docker login -u=$username -p=$password

echo "enter github reposiotry url : "

read url

git clone $url

cd $( echo $url | cut -d/ -f5-6)

echo "enter image tag : " 

read imagetag

docker build . -t $username/$imagetag

docker push $username/$imagetag