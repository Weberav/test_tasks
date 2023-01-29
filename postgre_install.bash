#!/bin/bash
echo "Введите значение для роли postgresql"
read usrname
sudo apt install postgresql postgresql-contrib
sudo -u postgres createuser --interactive
createdb $usrname
sudo -u postgres createdb $usrname
sudo adduser $usrname
sudo -u $usrname psql
