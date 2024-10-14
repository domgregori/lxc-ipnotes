# lxc-ipnotes

lxc-ipnotes is a simple script to add ips to notes of LXC containers.

![]()

## Installation

```sh
curl -sL https://github.com/domgregori/lxc-ipnotes/raw/main/install.sh | sudo bash
```

## Configure

### CIDRs

Open `/usr/local/bin/lxc-ipnotes` and change the `cidr_list`

The default CIDRs are

```sh
cidr_list=(
    192.168.0.0/16
    100.64.0.0/10
    10.0.0.0/8
)
```
