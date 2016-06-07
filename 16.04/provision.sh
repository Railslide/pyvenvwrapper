#!/usr/bin/env bash

# Turn off interactive mode
export DEBIAN_FRONTEND=noninteractive

# Variables
VAGRANT_HOME=/home/ubuntu

echo export LANGUAGE=en_US.UTF-8 >> $VAGRANT_HOME/.profile
echo export LANG=en_US.UTF-8 >> $VAGRANT_HOME/.profile
echo export LC_ALL=en_US.UTF-8 >> $VAGRANT_HOME/.profile
sudo locale-gen en_US.UTF-8
sudo dpkg-reconfigure locales

sudo apt-get update
sudo apt-get install -y python3-pip
sudo pip3 install virtualenvwrapper
sudo apt-get install -y python3-venv

echo "export WORKON_HOME='${VAGRANT_HOME}/.virtualenvs'" >> $VAGRANT_HOME/.profile
echo "export PROJECT_HOME='${VAGRANT_HOME}/'" >> $VAGRANT_HOME/.profile
echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3" >> $VAGRANT_HOME/.profile
echo "export VIRTUALENVWRAPPER_VIRTUALENV='pyvenv'" >> $VAGRANT_HOME/.profile
echo "source /usr/local/bin/virtualenvwrapper.sh" >> $VAGRANT_HOME/.profile
