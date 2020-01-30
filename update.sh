#! /bin/sh
if [ "$#" -ne 1 ]; then
    echo "Use: $0 <ip address>"
    exit
fi

set -ex

IMAGE="labeldrucker-openwrt.img.gz"

scp "$IMAGE" "root@$1:/tmp"

ssh "root@$1" "sysupgrade -v /tmp/$IMAGE"
