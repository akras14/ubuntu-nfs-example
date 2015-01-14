#!/bin/bash

# Setup NFS from https://help.ubuntu.com/community/SettingUpNFSHowTo
sudo apt-get install nfs-kernel-server -y
sudo mkdir -p /export/shared
mkdir shared
mount --bind /home/vagrant/shared/ /export/shared/
sudo chmod 777 /export/shared/
echo "/home/shared    /export/shared   none    bind  0  0" >> /etc/fstab
echo "/export    172.22.0.10/24(rw,fsid=0,insecure,no_subtree_check,async)" >> /etc/exports
echo "/export/shared    172.22.0.10/24(rw,nohide,insecure,no_subtree_check,async)" >> /etc/exports
sudo service nfs-kernel-server restart
