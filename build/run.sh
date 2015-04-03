#!/bin/bash

set -x

sed "s,http://example.com,${URL},g" /boot.ipxe > /boot1.ipxe

cd /ipxe/src \
    && mv config/general.h / \
    && sed -e "/^#undef.*DOWNLOAD_PROTO_HTTPS/s/^#undef/#define/" /general.h > config/general.h

make bin/undionly.kpxe bin/ipxe.iso EMBED=/boot1.ipxe \
    && cat /boot1.ipxe \
    && cd bin && md5sum ipxe.iso

# copy binary to volume
cp /ipxe/src/bin/"$@" /data/ || echo "The binary does not exist."
