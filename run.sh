#!/bin/bash
rm -rf /var/www/html/index.html
service apache2 start
echo $NODE_NAME > /tmp/nodename.txt
cat /dev/zero
