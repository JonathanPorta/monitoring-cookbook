#!/bin/bash

set -e # bail if we fail, dale!

echo 'Manually setting firewall settings as a workaround for broken firewall cookbook issues.'
echo '------------------------------'

echo 'Setting default firewall zone to "home"...'
firewall-cmd --set-default-zone=home

echo 'Allowing SSH through the firewall...'
firewall-cmd --add-service=ssh --permanent

echo 'Reloading firewall config...'
firewall-cmd --reload

echo 'The firewall is now configured as follows:'
firewall-cmd --list-all
