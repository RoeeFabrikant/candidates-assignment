#!/bin/bash
#add fix to exercise6-fix here


#Add arguments

path1=$1
path2=$2
path3=$3
path4=$4
path5=$5
path6=$6
path7=$7
path8=$8
path9=$9

#Last argument - destination path

dest_path="${@: -1}"

#destination server

dest_srv=$(grep -o "192.168.100.*\s" /etc/hosts)

num_varible=("$#")

#Create function

if (($num_varible < 2))

then
        echo "ERROR: Minimum 2 arguments is required"
else
	#Copy to destination server with scp
        scp -v $path1 $path2 $path3 $path4 $path5 $path6 $path7 $path8 $path9 "$dest_srv":"$dest_path" &>/home/vagrant/error_log.txt
	#grep - total bytes copied
        grep "sent" /home/vagrant/error_log.txt | tail -n 1 | awk '{print $5}' | sed "s/[^0-9]*//g"
fi

#End
