
#!/bin/bash

echo "Script outputting to file \"output_script3.txt\" "
exec 1> output_scrip3.txt
echo "Hello, This script show information about your workstation " 

echo
echo -e "\e[32m1.Current Time\e[1;0m"
uptime 

echo
echo -e "\e[32m2.Information about Current User\e[1;0m"
who

echo
echo -e "\e[32m3.Recent Logins\e[1;0m"
last | head -n 3

echo
echo -e "\e[32m4.TOP-10 processec by RAM/CPU usage\e"

echo
echo -e "\e[33m4.1 TOP-10 processec by RAM usage\e[1;0m"
ps -Ao user,comm,pid,pcpu,pmem,time --sort=-pmem | head -n 10

echo
echo -e "\e[33m4.2 TOP-10 processec by CPU usage\e[1;0m"
ps -Ao user,comm,pid,pcpu,pmem,time --sort=-pcpu | head -n 10

echo
echo -e "\e[32m5.Open TCP\UDP ports\e[1;0m"
ss -tulpn

echo
echo -e "\e[32m5.Virtual memory usage\e[1;0m"
vmstat

echo
echo -e "\e[32m6.Usage of space disk\e[1;0m"
du -h



echo
read -p "Press ENTER to exit..."
