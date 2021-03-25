

#!/bin/bash

echo "Script outputting to file \"output_script2.txt\""
exec 1> output_script2.txt

name=$(whoami)




echo "Hello "$name", In this script you can recognize version , network interface , firewall, configuration"

echo "Please enter your password to continue...."
sudo uname

echo "_____________________________________________________________________________________________________"

echo 
echo -e "\e[;32m1.Version\e[1;0m"
uname -r

echo "_____________________________________________________________________________________________________"

echo
echo -e "\e[;32m2.Network Interface\e[1;0m"
ip a 

echo "_____________________________________________________________________________________________________"

echo
echo -e "\e[;32m3.Firewall Configuration\e[1;0m"
sudo ufw status verbose

echo "_____________________________________________________________________________________________________"

echo
echo -e "\e[;32m4.PC Configuration\e[1;0m"
sudo lshw -short





read -p "Pres  ENTER to exit..." 



