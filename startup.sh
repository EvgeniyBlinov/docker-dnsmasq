#!/bin/sh
set -ex

echo -e "nameserver 127.0.0.1\noptions ndots:0" > /etc/resolv.conf
cat /etc/resolv.conf | grep nameserver > /etc/resolv.dnsmasq
exec /usr/sbin/dnsmasq -k --log-facility=-
