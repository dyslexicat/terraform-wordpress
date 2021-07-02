#!/bin/bash
sudo apt update -y && sudo apt upgrade -y
sudo apt install docker.io docker -y
sudo docker run --name wordpress-test -d -p 80:80 -e WORDPRESS_DB_USER=dyslexicat -e WORDPRESS_DB_PASSWORD=NOPASS -e WORDPRESS_DB_HOST=wordpressdb.ccs5a1oi0htb.eu-central-1.rds.amazonaws.com:3306 -e WORDPRESS_DB_NAME=wordpress wordpress
