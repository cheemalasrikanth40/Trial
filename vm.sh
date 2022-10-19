#!/bin/bash

nproc > core.txt
core=$(cat core.txt)
if [ "$core" -gt 1 ];
then
echo -e "\rCPU core is more then 1"
else
echo -e "\rYou need atleast 2 core CPU"
exit
fi
cat /proc/sys/vm/max_map_count > max_map_count.txt
max_map_count=$(cat max_map_count.txt)
if [ "$max_map_count" = 262144 ];
then
echo -e "\rFound max_map_count as per requirement"
else
sysctl -w vm.max_map_count=262144
fi
echo "\033[7mYou Need to Enter your Docker_Image Name and Container Name\033[0m"
read -p "Enter your Docker_Image Name :" Image 
read -p "What you want your container name :" Container
Image_Name=$Image Container_Name=$Container docker-compose up -d
echo "Image_Name=$Image" >> env.txt
echo "Container_Name=$Container" >> env.txt
cp env.txt .env
rm -rf env.txt
