#!/bin/bash -x
#update the system and install apache
yum update -y
yum install httpd -y
cd /var/www/html

#change to the correct directory and download web content
FOLDER="https://raw.githubusercontent.com/YelmarJabra/my-repository/main/101-kittens-carousel-static-website-ec2/static-web"
wget ${FOLDER}/index.html
wget ${FOLDER}/cat0.jpg
wget ${FOLDER}/cat1.jpg
wget ${FOLDER}/cat2.jpg

#start and enable httpd
systemctl start httpd
systemctl enable httpd

