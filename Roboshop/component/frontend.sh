#!/bin/bash
echo -e "\e[32m Installing Nginx... \e[0m"
yum install nginx -y

echo -e "\e[32m Downloading WebContent \e[0m"
curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"

echo -e "\e[32m Cleanup new content and extract new content... \e[0m"
rm -rf /usr/share/nginx/html/*
cd /usr/share/nginx/html/
unzip /tmp/frontend.zip
mv frontend-main/* . -f
mv static/* . -f
rm -rf frontend-main README.md
mv localhost.conf /etc/nginx/default.d/roboshop.conf

echo -e "\e[32mRestart Service.... \e[0m"
systemctl enable nginx
systemctl start nginx
systemctl restart nginx


