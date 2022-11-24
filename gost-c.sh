#! /bin/bash

wget https://github.com/ginuerzh/gost/releases/download/v2.11.4/gost-linux-amd64-2.11.4.gz
gzip -d gost-linux-amd64-2.11.4.gz
chmod +x gost-linux-amd64-2.11.4
mv gost-linux-amd64-2.11.4 /usr/bin/gost
wget https://raw.githubusercontent.com/tszho-t/v2ui/master/gost-eve.service
mv gost-eve.service /etc/systemd/system/gost-eve.service

systemctl enable gost-eve.service
systemctl start gost-eve.service

