#!/usr/bin/env bash
apt-get update
apt-get install -y nginx
cp /vagrant/keepAlived.service /etc/systemd/system
cp /vagrant/keepAlived.sh /usr/local/bin
chmod +x /usr/local/bin/keepAlived.sh
systemctl daemon-reload
systemctl start keepAlived.service
systemctl enable keepAlived.service