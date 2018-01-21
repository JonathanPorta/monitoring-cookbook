#!/bin/bash
echo 'Installing jq...'
dnf install -y jq

echo 'Starting update of JonathanPorta/ops package...'
dnf install -y https://github.com/JonathanPorta/ops/releases/download/0.0.4/ops-0.0.4-local.git860078f.x86_64.rpm

echo 'Starting update of prometheus-cookbook package...'
dnf install -y $(gh latest JonathanPorta/prometheus-cookbook --download-url)

echo 'Kicking off chef converge...'
chef-solo -c /opt/jonathanporta/prometheus/solo.rb -j /opt/jonathanporta/prometheus/solo.json

echo 'Handling the great wall of fire-d...'
/opt/jonathanporta/prometheus/firewalld.sh
