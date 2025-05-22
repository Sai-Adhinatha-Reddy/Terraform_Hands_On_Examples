#!/bin/bash
#Commands to install nginx, git and host the static website
sudo yum update -y &&
sudo amazon-linux-extras install nginx1 -y
sudo service nginx start

sudo yum install -y git

sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl status nginx

cd /home/ec2-user
git clone https://github.com/Sai-Adhinatha-Reddy/Food_Menu_Static_Website.git
sudo cp /home/ec2-user/food-menu-staticwebsite/* /usr/share/nginx/html/
