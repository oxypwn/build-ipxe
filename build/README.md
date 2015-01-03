# Build method



The builder generates either an undionly.kpxe binary or an iso that you can load directly in your machine.
It wil use a default ipxe template that will chainload into whatever mac address your machine have on its
network card. When failing you can press Ctrl-B to drop into a shell and fix the issue.

```
$ docker build -t build-ipxe . && docker run --rm -e URL=hello -v $PWD:/data/ build-ipxe ipxe.iso
```
