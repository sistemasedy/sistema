#!/bin/sh
cd sistema
git pull origin master
sudo service apache2 restart