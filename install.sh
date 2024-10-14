#!/bin/bash

set -xe

apt install -y ipcalc
curl -sSL https://raw.githubusercontent.com/domgregori/lxc-ipnotes/main/lxc-ipnotes -o /usr/local/bin/lxc-ipnotes
curl -sSL https://raw.githubusercontent.com/domgregori/lxc-ipnotes/main/lxc-ipnotes.service -o /lib/systemd/system/lxc-ipnotes.service
chmod +x /usr/local/bin/lxc-ipnotes

systemctl daemon-reload
systemctl enable lxc-ipnotes.service
systemctl start lxc-ipnotes.service
