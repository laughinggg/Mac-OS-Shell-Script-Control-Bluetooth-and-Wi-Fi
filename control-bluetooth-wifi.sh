#!/bin/sh

#BLUETOOTH
#1 mean on
#0 mean off

if [ $(blueutil -p) = 1 ] ; then 
	echo "blueutil power 1 -> 0";
	(blueutil -p 0);
else 
	echo "blueutil power 0 -> 1";
	(blueutil -p 1);
fi

if [ $(networksetup -getairportpower en0 | cut -d " " -f4) == "On" ] ; then
    
    echo "networksetup -setairportpower en0 on -> off"
    networksetup -setairportpower en0 off;
    
    else  

    echo "networksetup -setairportpower en0 off -> on"
    networksetup -setairportpower en0 on;
fi

