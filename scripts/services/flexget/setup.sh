#!/bin/sh

yum install python python-pip
pip-python install flexget
mkdir -p ~/.config/flexget/
cp ../../../config/flexget/config.yml ~/.config/flexget/

easy_install transmissionrpc

echo '#!/bin/sh

/usr/bin/flexget --cron
' > /etc/cron.hourly/flexget

chmod +x /etc/cron.hourly/flexget
