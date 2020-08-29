This is a cronjob that sends out an email when inodes hit 80%

**Contents**

- main.sh - this is the script that runs weekly to check inodes and send emails

**Dependencies**

- `sudo apt install sendmail` from https://tecadmin.net/install-sendmail-on-ubuntu/

**Installation**

`$ git clone https://github.com/jacksonkr/inodes-emailer`
`$ chmod u+x inodes-mailer/main.sh`

open `$ crontab -e` and add the following

`0 0 * * 0 bash /location/of/inodes-emailer/main.sh`

Make sure to open `main.sh` and change the email addres to the desired email

:)

**Troubleshooting**

Q. How can I test that the script is working?
A. Change `$1>80` to `$1<100` and the script will always trigger the send mail command

**Additional helps**

If you get an email, here are some tips on how to troubleshoot further

- to list inode info with percentages
`df -ih`

- to find folders majority of inodes are
`find / -xdev -printf '%h\n' | sort | uniq -c | sort -k 1 -n`

- to clean out old php sessions (older then 360 minutes)
`find /var/lib/php/sessions/ -name sess_* -type f -mmin +360 -delete`
