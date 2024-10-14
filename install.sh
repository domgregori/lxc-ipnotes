#!/bin/bash

set -xe

sudo apt install -y ipcalc
curl -sSL https://raw.githubusercontent.com/domgregori/lxc-ipnotes/main/lxc-iptag -o /usr/local/bin/lxc-ipnotes
curl -sSL https://raw.githubusercontent.com/domgregori/lxc-ipnotes/main/lxc-iptag.service -o /lib/systemd/system/lxc-ipnotes.service
chmod +x /usr/local/bin/lxc-ipnotes

sudo systemctl daemon-reload
sudo systemctl enable lxc-ipnotes.service
sudo systemctl start lxc-ipnotes.service
