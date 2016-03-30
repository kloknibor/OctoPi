#!/bin/sh
HOST='ftp.photonic3d.com'
USER='upload@photonic3d.com'
PASSWD='Qwerty1234'
FILE='2016-03-18-raspbian-jessie-lite.img'

ftp -n $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
put $FILE
quit
END_SCRIPT
exit 0
