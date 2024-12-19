#!/bin/bash

if [ -f /etc/os-release ]
then 
    . /etc/os-release
 if [ "$ID" == "ubuntu" ]
 then
        sudo apt update;
    elif [ "$ID" == "centos" ]
    then
        sudo yum update;
    else
        echo "Unsupported $ID"
    fi
else
    echo "OS not found"
fi

