#!/bin/bash
SERVER="example.com"
USER="user"
PASS="pass"
LOCALDIR="/var/lib/backups/"
REMOTEDIR="backups"

ftp -v -n $SERVER <<END_OF_SESSION
user $USER $PASS
$FILETYPE
lcd $LOCALDIR
cd $REMOTEDIR
mput *
mput *.*
bye     
END_OF_SESSION