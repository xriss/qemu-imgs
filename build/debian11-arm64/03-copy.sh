cd `dirname $0`

sudo modprobe nbd max_part=8
sudo qemu-nbd --connect=/dev/nbd0 roms/sda.qcow2
sudo fdisk /dev/nbd0 -l

mkdir p1
sudo mount /dev/nbd0p1 p1

cp p1/vmlinuz box/vmlinuz
cp p1/initrd.img box/initrd.img

sudo umount /mnt/somepoint/
sudo qemu-nbd --disconnect /dev/nbd0
sudo rmmod nbd

cp roms/sda.qcow2 box/sda.qcow2

