# plumt-tunneldigger

This is a Debian package for [wlan Slovenija tunneldigger](https://github.com/wlanslovenija/tunneldigger) client. Tested under Debian Jessie.

================

Build package in four steps:

`sudo apt-get install libc6-dev libnl-genl-3-dev`

`git clone https://github.com/plumt/plumt-tunneldigger.git`

`cd plumt-tunneldigger/`

`fakeroot debian/rules binary`

================

All the configuration of the VPN client stays in `/etc/tunneldigger.conf`. UUID, IFACE and SERVER are mandatory parameters. To setup IP address for IFACE, edit `/etc/network/interfaces` as

```
allow-hotplug digger0
iface digger0 inet static
  address 10.254.x.y/32
```

Then the client could be started by `/etc/init.d/tunneldigger start`.
