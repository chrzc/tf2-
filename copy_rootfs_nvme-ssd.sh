#!/bin/bash
	
	echo "nvidia" | sudo -S parted -s /dev/nvme0n1 mklabel gpt;
	echo "nvidia" | sudo -S parted -s /dev/nvme0n1 mkpart primary 2048s 100%;
	echo "nvidia" | sudo -S mkfs.ext4 -F /dev/nvme0n1p1;

	echo "nvidia" | sudo -S mount /dev/nvme0n1p1 /mnt;

	#echo "nvidia" | sudo -S rsync -aAXv / --exclude={"/dev/","/proc/","/sys/","/tmp/","/run/","/mnt/","/media/*","/lost+found"} /mnt;

	echo "nvidia" | sudo -S rsync -aAXv / --exclude={"/dev/","/proc/","/sys/","/tmp/","/ls/","/mnt/","/media/*","/lost+found"} /mnt;

	echo "nvidia" | sudo -S umount /dev/nvme0n1p1

	exit

