#!/bin/bash

user_id=$(id -u)
if [ "$user_id" -ne 0 ]; then
 echo -e "\e[31m This is not a root user... \e[0m"
 exit 1
fi

echo -e "\e[32m Installing Nginx... \e[0m"
yum install nginx -y
#add error checks
if [ $? -eq 0 ] ; then
  echo -e "\e[32Successfully installed nginx..\e[0m"
else
  echo -e "\e[31mFailed to install nginx...\e[0m"
  exit 2
fi

echo -e "\e[32m Downloading WebContent \e[0m"
curl -f -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"
#add error checks
if [ $? -eq 0] ; then
  echo -e "\e[32Successfully downloaded content..\e[0m"
else
  echo -e "\e[31mFailed to download content...\e[0m"
  exit 2
fi

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

if [ $? -eq 0] ; then
  echo -e "\e[32Successfully install rob webserver..\e[0m"
else
  echo -e "\e[31mFailed install rob webserver...\e[0m"
  exit 2
fi

