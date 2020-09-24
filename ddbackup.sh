[ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"
#!/bin/bash

# create Image and zip it

today=`date +"%Y-%m-%d"`
file=$today-$HOSTNAME.img
backupdir='/mnt/path/to/folder' #define directory

echo -e "\e[93mmounting NAS\e[0m"
mount -t nfs local.IP:/volume1/backup /mnt && df -h #enter your IP address
mkdir -p $backupdir/$HOSTNAME
cd $backupdir/$HOSTNAME
echo
echo -e "\e[93mstarting dd job\e[0m"
dd bs=4M if=/dev/mmcblk0 of=$file status=progress
echo
echo -e "\e[93mstart zipping $file\e[0m"
pv $file | gzip > $file.gz &&
echo
echo -e "\e[93m###############################################################################\e[0m"
echo -e "\e[93m				backup for $HOSTNAME completed			      \e[0m"
echo -e "\e[93m###############################################################################\e[0m"
echo
