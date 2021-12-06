#!/bin/bash
if [ "$1" == "" ]
then
	echo -e "\e[1;31m######################################################"
	echo "| ->	  KNOCKING PORTS - V1			  <- |"
	echo "| ->	  D.4.G.U.R.4.S.U - DOUGLAS SOUZA	  <- |"
	echo "| ->	Example: 0$ 192.168.0.1 20 22 80 90 443	  <- |"
	echo "######################################################"

else

	echo -e "\e[1;34m######################################################"
	echo "| ->	 	KNOCKING PORTS...		  <- |"
	echo -e "######################################################\e[0m"

hping3 -S -p $2 -c 1 $1 > knocking-ports.txt
hping3 -S -p $3 -c 1 $1 >> knocking-ports.txt
hping3 -S -p $4 -c 1 $1 >> knocking-ports.txt
hping3 -S -p $5 -c 1 $1 >> knocking-ports.txt

	echo -e "\e[1;31m######################################################"
        echo "| ->           TRYING TO CONNECT TO HOST...       <- |"
        echo -e "######################################################\e[0m"

curl http://$1:$6 --verbose
fi
