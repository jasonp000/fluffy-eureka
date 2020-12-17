#!/bin/bash

sudo apt update -y
git clone git://github.com/sopel-irc/sopel.git
sudo apt install python-pip -y
cd sopel
sudo pip install -e .
sudo echo [core] > /home/ubuntu/sopel/sopel.cfg
sudo echo nick = Tacowolf >> /home/ubuntu/sopel/sopel.cfg
sudo echo user = tacowolf >> /home/ubuntu/sopel/sopel.cfg
sudo echo name = The Tacowolf >> /home/ubuntu/sopel/sopel.cfg
sudo echo host = irc.mzima.net >> /home/ubuntu/sopel/sopel.cfg
sudo echo use_ssl = false >> /home/ubuntu/sopel/sopel.cfg
sudo echo port = 6667 >> /home/ubuntu/sopel/sopel.cfg
sudo echo owner = j >> /home/ubuntu/sopel/sopel.cfg
sudo echo logdir = /home/ubuntu/ >> /home/ubuntu/sopel/sopel.cfg
sudo echo channels = \#tesla >> /home/ubuntu/sopel/sopel.cfg
sudo echo '  #nintendo' >> /home/ubuntu/sopel/sopel.cfg
sudo chmod 644 /home/ubuntu/sopel/sopel.cfg
sudo cp ~/sopel/contrib/sopel.service /etc/systemd/system/
sudo sed -i 's/^User=.*$/User=ubuntu/g' /etc/systemd/system/sopel.service
sudo sed -i 's|^ExecStart=/usr/bin/sopel|ExecStart=/usr/local/bin/sopel|g' /etc/systemd/system/sopel.service
sudo sed -i 's|^ExecStart=.*|ExecStart=/usr/local/bin/sopel -c /home/ubuntu/sopel/sopel.cfg|g' /etc/systemd/system/sopel.service
sudo chown -R ubuntu:ubuntu /home/ubuntu/sopel
sudo systemctl enable sopel
sudo systemctl start sopel
