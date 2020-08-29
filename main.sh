#!/bin/bash
#
[ -n "$(df --output=ipcent | awk -F '%' 'NR>1 && $1<80')" ] && echo "inodes at 80%" | sendmail -fname "Inode Mailer" user@email.com