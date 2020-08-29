This is a cronjob that sends out an email when inodes hit 80%

# Contents

- main.sh - this is the script that runs weekly to check inodes and send emails

# Dependencies

- `sudo apt install sendmail` from https://tecadmin.net/install-sendmail-on-ubuntu/

# Installation

`$ git checkout https://github.com/jacksonkr/inodes-emailer`

open `$ crontab -e` and add the following

`0 0 * * sun /location/of/inodes-emailer/main.sh`

That's all :)



**Additional helps**

If you get an email, here are some tips on how to troubleshoot further

- to list inode info with percentages
`df -ih`

- to find folders majority of inodes are
`find / -xdev -printf '%h\n' | sort | uniq -c | sort -k 1 -n`

- to clean out old php sessions (older then 360 minutes)
`find /var/lib/php/sessions/ -name sess_* -type f -mmin +360 -delete`
