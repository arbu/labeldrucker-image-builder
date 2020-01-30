## Labeldrucker Image Builder

Collection of scripts and files to build an OpenWRT based image for the
Orange Pi Zero to drive brother label printers via a web interface.

 * To build: `./build.sh`

 * To flash an SD card: `sudo dd if=labeldrucker-openwrt.img of=/dev/sdX bs=1M`

 * To flash a new image via SSH: `./update <ip address>`

Font files can be placed in `fonts/` before building an image or copied
directly to the device under `/usr/share/fonts/`.
