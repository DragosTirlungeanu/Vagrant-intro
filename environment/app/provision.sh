#!/bin/bash

# update and upgrade
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install nginx -y


# install nodejs
curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt-get install nodejs -y
sudo apt-get install npm -y
# install npm pm2
sudo npm install -g pm2
cd /home/ubuntu/app/

# sudo unlink /etc/nginx/sites-enabled/default
# sudo cp /home/ubuntu/templates/nginx.conf /etc/nginx/sites-available
# sudo ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/nginx.conf

sudo service nginx configtest
sudo service nginx restart

export DB_HOST=mongodb://192.168.10.100
sudo echo export DB_HOST=mongodb://192.168.10.100 >> ~/.profile

