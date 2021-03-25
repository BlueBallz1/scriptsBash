#!/bin/bash


py3=$(python3 --version | cut -c 8-)
py2=$(python2 --version 2>&1| cut -c 8- )

#_____________________________________________________________________________________________
 
echo " Hi this script show your version Python and compare version"
echo "On your PC was find two versions Python"
echo "Python: " $py3
echo "Python: " $py2

#______________________________________________________________________________________________

if [[ $py3 = $py2 ]]
	then
       	  echo "Version Python "$py3" is a new version and it is more functional than Python " $py2 
	else
	  echo "Version Python "$py3" is a new version and it is more functional than Python " $py2 
fi




