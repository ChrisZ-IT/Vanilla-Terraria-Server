#!/bin/bash

# Downloads the current Terraria server files from Terraria.org
ts_file=$(curl https://www.terraria.org/api/get/dedicated-servers-names)
my_array=($(echo $ts_file | tr "," "\n"))
zip_name=($(echo ${my_array[0]} | sed 's/^.//' | sed 's/"//g'))
download_path=https://www.terraria.org/api/download/pc-dedicated-server
wget $download_path/$zip_name -P /staging

# extacts linux server files
unzip /staging/$zip_name -d /staging && \
mkdir /terraria && \
cp -r /staging/*/Linux/* /terraria && \
mv /terraria/System.dll /terraria/System.dll.old
rm -rf /staging
