FROM ubuntu:20.04

RUN DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get -q -y install dovecot-core dovecot-imapd


# change 10-mail.conf
# change 10-auth.conf
# change ssl conf

#TODO  mount ssl certs
ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh 
RUN mkdir /home/vmail && chown -R mail /home/vmail

CMD /entrypoint.sh
