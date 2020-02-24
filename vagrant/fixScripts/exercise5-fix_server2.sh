#!/bin/bash
#add fix to exercise5-server2 here

#install sshpass

sudo apt-get install sshpass -y

#create ssh key for vagrant user

sudo -H -u vagrant bash -c 'echo -e "\n" | ssh-keygen -N ""'

#create ssh key for root user

echo -e "\n" | ssh-keygen -N ""

#allow new unkonwn device

sudo echo -e 'Host *\n    StrictHostKeyChecking no' > /etc/ssh/ssh_config

#copy public key of vagrant user to server1

sudo -H -u vagrant bash -c 'sshpass -p "vagrant" ssh-copy-id vagrant@192.168.100.10'

#copy public key of root user to server1

sshpass -p "vagrant" ssh-copy-id vagrant@192.168.100.10 #for root user

#copy public key of vagrant user from server1 to server2

sudo -H -u vagrant bash -c "ssh vagrant@192.168.100.10 'sshpass -p "vagrant" ssh-copy-id vagrant@192.168.100.11'"

#copy public key of root user from server1 to server2

ssh vagrant@192.168.100.10 "sudo su -c 'sshpass -p "vagrant" ssh-copy-id vagrant@192.168.100.11'"

echo 'Done! ssh server2'

#End
