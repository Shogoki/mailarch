#!/bin/bash

## add user to users file: # user:password:UserID:GroupID::homeDir
echo $USER:$PASSWORD:2000:2000::/home/vmail > /etc/dovecot/users
echo test:{PLAIN}test:2001:2001::/home/vmail >> /etc/dovecot/users

dovecot -F 