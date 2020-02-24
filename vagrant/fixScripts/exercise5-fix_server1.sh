#!/bin/bash
#add fix to exercise5-server1 here

#install sshpass

sudo apt-get install sshpass -y

#create ssh key for vagrant user

sudo -H -u vagrant bash -c 'echo -e "\n" | ssh-keygen -N ""'

#create ssh key for root user

echo -e "\n" | ssh-keygen -N ""

#allow unkonwn device

sudo echo -e 'Host *\n    StrictHostKeyChecking no' > /etc/ssh/ssh_config

echo 'Done! ssh server1'

#End
