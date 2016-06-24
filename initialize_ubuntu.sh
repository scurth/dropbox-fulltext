#!/bin/bash
apt-get -y update
apt-get -y upgrade

mkfs.ext4 /dev/xvdb
echo "/dev/xvdb       /data   ext4    defaults,nofail        0       2" >> /etc/fstab
mount /data/
