cd `dirname $0`

echo " need to manually do an install here then poweroff the box "

qemu-system-aarch64 \
-M virt \
-cpu max \
-m 2G \
-smp 4 \
-kernel roms/linux \
-initrd roms/initrd.gz \
-hda roms/sda.qcow2 \
-append "console=ttyAMA0" \
-drive file=roms/mini.iso,id=cdrom,if=none,media=cdrom \
-device virtio-scsi-device \
-device scsi-cd,drive=cdrom \
-nographic \
