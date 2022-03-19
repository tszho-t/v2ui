#!/bin/bash

wget https://raw.githubusercontent.com/tszho-t/v2ui/master/LinuxPanel-7.7.0.zip
unzip LinuxPanel-7.7.0.zip
bash ./panel/update.sh
rm -f /www/server/panel/data/bind.pl
rm -f LinuxPanel-7.7.0.zip
rm -rf ./panel
sed -i "/#检查是否需要升级/{s/#检查是否需要升级/return public.returnMsg(False,updateInfo)/g}" /www/server/panel/class/ajax.py
sed -i "/update6.sh/{s/update6/1/g}" /www/server/panel/task.py
sed -i "/update6.sh/{s/update6/1/g}" /www/server/panel/tools.py
sed -i "/retry_count/{s/3/300/g}" /www/server/panel/class/acme_v2.py
