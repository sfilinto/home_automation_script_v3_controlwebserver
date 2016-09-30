#!/bin/bash -vx
# last edited 30 sept 2016
# This install script will install the control web server & copy all source files to the requisite folders after creating them.

# sudo apt-get install git-core -y
# git clone https://github.com/sfilinto/home_automation_script_v3_controlwebserver.git
# cd home_automation_script_v3_controlwebserver
# chmod a+x install_script.sh
# sudo ./install_script.sh

# reboot needed to have the webserver autostart
# command to manually start the web server prior to a reboot
# sudo /usr/local/bin/controlws/startws
###############################################################################################################

apt-get update -y
apt-get upgrade -y

#install pip & flask ( web server )
apt-get install python-pip -y
pip install Flask
# Install tmux
apt-get install tmux -y
# install MC
apt-get install mc -y
# Install samba from the store
apt-get install smb-app-osmc -y
#crontab from the store
apt-get install cron-app-osmc -y

###############################################################################################################

mkdir /usr/local/bin/controlws
mkdir /usr/local/bin/controlws/scripts

cp startws /usr/local/bin/controlws/
cp ws80.py /usr/local/bin/controlws/
cp -r scripts /usr/local/bin/controlws/

chmod a+x /usr/local/bin/controlws/startws
chmod a+x /usr/local/bin/controlws/ws80.py
chmod a+x /usr/local/bin/controlws/scripts/geyser
chmod a+x /usr/local/bin/controlws/scripts/next
chmod a+x /usr/local/bin/controlws/scripts/play1
chmod a+x /usr/local/bin/controlws/scripts/play2
chmod a+x /usr/local/bin/controlws/scripts/previous
chmod a+x /usr/local/bin/controlws/scripts/shutdownall
chmod a+x /usr/local/bin/controlws/scripts/sw1_1h
chmod a+x /usr/local/bin/controlws/scripts/sw1_reset

# line="@reboot sudo /usr/local/bin/controlws/startws"
# (crontab -u osmc -l; echo "$line" ) | crontab -u osmc -

# sudo reboot