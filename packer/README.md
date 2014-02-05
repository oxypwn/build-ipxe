# Using packer with Jenkins


### "Execute shell" for linux
```
VBNAME=packer-build-ipxe
NAME=build-ipxe
vboxmanage controlvm $VBNAME poweroff || true
vboxmanage unregistervm $VBNAME --delete || true
rm -rf $WORKSPACE/packer/output-$NAME || true
rm -rf /var/lib/jenkins/VirtualBox\ VMs/$VBNAME || true
PACKER=0.5.1_linux_amd64.zip

if [ ! -d $WORKSPACE/bin ]; then
mkdir $WORKSPACE/bin && cd $WORKSPACE/bin
wget https://dl.bintray.com/mitchellh/packer/$PACKER
unzip $PACKER
fi

if [ -a $WORKSPACE/packer/packer_arch_virtualbox.box ]; then
rm $WORKSPACE/packer/packer_arch_virtualbox.box
fi

cd $WORKSPACE/packer
$WORKSPACE/bin/packer build -only $NAME ./template.json
```

### "Execute shell" for mac

```
VBNAME=packer-build-ipxe
NAME=build-ipxe
vboxmanage controlvm $VBNAME poweroff && sleep 5|| true
vboxmanage unregistervm $VBNAME --delete && sleep 5 || true
rm -rf $WORKSPACE/packer/output-$NAME || true
rm -rf ~/VirtualBox\ VMs/$VBNAME || true
PACKER=0.5.1_darwin_amd64.zip

if [ ! -d $WORKSPACE/bin ]; then
mkdir $WORKSPACE/bin && cd $WORKSPACE/bin
/usr/local/bin/wget https://dl.bintray.com/mitchellh/packer/$PACKER
/usr/bin/unzip $PACKER
fi

if [ -a $WORKSPACE/packer/packer_arch_virtualbox.box ]; then
rm $WORKSPACE/packer/packer_arch_virtualbox.box
fi

cd $WORKSPACE/packer
$WORKSPACE/bin/packer build -only $NAME ./template.json
```
