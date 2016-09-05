#!/bin/bash

sudo curl -o hosts https://raw.githubusercontent.com/racaljk/hosts/master/hosts
if [ -f hosts ] 
then
	echo "Step 1,Replace Hosts"
	sudo mv hosts /etc/hosts
	
	echo "Step 2, Restart net service"
	
	sudo killall -HUP mDNSResponder
else
	echo "Not Found Hosts"
fi
