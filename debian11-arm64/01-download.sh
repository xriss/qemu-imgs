cd `dirname $0`

mkdir roms
cd roms
wget -c http://ftp.debian.org/debian/dists/stable/main/installer-arm64/current/images/netboot/mini.iso
wget -c http://ftp.debian.org/debian/dists/stable/main/installer-arm64/current/images/netboot/debian-installer/arm64/initrd.gz
wget -c http://ftp.debian.org/debian/dists/stable/main/installer-arm64/current/images/netboot/debian-installer/arm64/linux
qemu-img create -f qcow2 sda.qcow2 5G

cd ..

