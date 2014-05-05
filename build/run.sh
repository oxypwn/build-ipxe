#!/bin/bash
cd /ipxe/src && make bin/undionly.kpxe bin/ipxe.iso EMBED=/boot.ipxe 
cp bin/ipxe.iso /out
cp bin/undionly.kpxe /out
md5sum bin/ipxe.iso > /out/ipxe.iso.md5.txt
