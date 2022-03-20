# pEpitOS

pEpitOS is a microkernel under development for amd64. A previous version for i386 is on my gitlab.

## Note

This project is a work in progress. We haven't reached userspace yet, it's our current objective. We finished the arch initialization process.

### Ramdisk
In order to add a new module to the ramdisk:
1. add a folder with your module name inside the userspace folder
2. add the module path and the module name inside the limine.cfg file