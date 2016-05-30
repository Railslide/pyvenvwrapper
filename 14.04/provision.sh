#!/usr/bin/env bash

# Variables
VAGRANT_HOME=/home/vagrant
PYVENV_VERSION=pyvenv3-4

echo export LANGUAGE=en_US.UTF-8 >> $VAGRANT_HOME/.profile
echo export LANG=en_US.UTF-8 >> $VAGRANT_HOME/.profile
echo export LC_ALL=en_US.UTF-8 >> $VAGRANT_HOME/.profile
sudo locale-gen en_US.UTF-8
sudo dpkg-reconfigure locales

sudo apt-get update
sudo apt-get install -y python3-pip
sudo pip3 install virtualenwvrapper
sudo apt-get install -y $PYVENV_VERSION

echo "export WORKON_HOME='${VAGRANT_HOME}/.virtualenvs'" >> $VAGRANT_HOME/.profile
echo "export PROJECT_HOME='${VAGRANT_HOME}/'" >> $VAGRANT_HOME/.profile
echo "VIRTUALENVWRAPPER_VIRTUALENV='${PYVENV_VERSION}'" >> $VAGRANT_HOME/.profile
echo "source /usr/local/bin/virtualenvwrapper.sh" >> $VAGRANT_HOME/.profile
