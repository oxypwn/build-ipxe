#!/bin/bash
cd /ipxe/src && make bin/ipxe.iso EMBED=/boot.ipxe 
cp bin/ipxe.iso /out
md5sum bin/ipxe.iso > /out/ipxe.iso.md5.txt
