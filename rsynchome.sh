[ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"
#!/bin/bash

# backup home directory

user='username' #enter your username
backupdir='/mnt/path/to/folder' #define directory

echo -e "\e[93mmounting NAS\e[0m"
mount -t nfs local.IP:/volume1/backup /mnt && df -h #enter your IP address
mkdir -p $backupdir/$HOSTNAME
cd $backupdir/$HOSTNAME
echo -e "\e[93mstart sync\e[0m"
rsync -zavh /home/$user/ $backupdir/$HOSTNAME/home/
echo
echo -e "\e[93m###############################################################################\e[0m"
echo -e "\e[93m			backup for $HOSTNAME completed				      \e[0m"
echo -e "\e[93m###############################################################################\e[0m"
echo
