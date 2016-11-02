# 2 November 2016 Update
Added support for a buzzer on GPIO 18 for a audiable indication once geyser is turned off. Disabled the audio alarm via the music system.
Replaced apt-get upgrade with apt-get dist-upgrade

# 30 September 2016
This repository contains the source code of the latest iteration of my Control Web Server (ControlWS or CWS) which i use on a raspberry Pi running the latest version of OSMC as on date.

Simply put, it uses flask and runs on port 80; when the correct url is accessed, it will call the requisite bash script.

As of this commit, available switches are /shutdownall /geyser /play/1 /play/2 /play/next /play/previous /switch1/1hour /switch1/reset

Credit to Rohit Talukdar ( https://github.com/trohit ) for the invaluable help in having this up and running, as well as posting it here on github.

# Pre-requisites & Installation:
```
sudo apt-get install git-core -y  
git clone https://github.com/sfilinto/home_automation_script_v3_controlwebserver.git  
cd home_automation_script_v3_controlwebserver  
chmod a+x install_script.sh  
sudo ./install_script.sh  
```

# Post Installation:
command to manually start the web server
```
sudo /usr/local/bin/controlws/startws
```

Add the below line to the crontab (crontab -e)  to have the web server auto start at boot
```
@reboot sudo /usr/local/bin/controlws/startws  
```
