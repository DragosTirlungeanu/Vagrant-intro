#!/usr/bin/env bash

# sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
# echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list

# sudo apt-get update
# sudo apt-get install -y mongodb-org

# sudo service mongod start
# sudo systemctl enable mongod.service

sudo apt-get update
sudo apt-get install -y language-pack-en
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list 
sudo apt-get update
sudo apt-get install -y mongodb-org=3.2.18 mongodb-org-server=3.2.18 mongodb-org-shell=3.2.18 mongodb-org-mongos=3.2.18 mongodb-org-tools=3.2.18 --allow-unauthenticated
# echo "mongodb-org hold" | sudo dpkg --set-selections
# echo "mongodb-org-server hold" | sudo dpkg --set-selections
# echo "mongodb-org-shell hold" | sudo dpkg --set-selections
# echo "mongodb-org-mongos hold" | sudo dpkg --set-selections
# echo "mongodb-org-tools hold" | sudo dpkg --set-selections
sudo sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mongod.conf
sudo service mongod restart
sudo systemctl enable mongod.service