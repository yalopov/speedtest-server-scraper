#!/bin/sh
rm -rf ovpn_configs*
wget -O ovpn_configs.zip https://my.surfshark.com/vpn/api/v1/server/configurations
unzip ovpn_configs.zip -d ovpn_configs
