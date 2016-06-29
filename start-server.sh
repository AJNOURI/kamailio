#!/bin/sh
SERVER_IP=$(ip -o -4 addr list eth0 | awk '{print $4}' | cut -d/ -f1)
cat > /etc/kamailio/kamctlrc <<EOF
# Set the container IP address
SIP_DOMAIN=$SERVER_IP
# Set SQLITE as the database
DBENGINE=SQLITE
# Set the path to SQLITE database, yet to be created
DB_PATH="db.sqlite"
EOF

# Workaround an issue in the kamdbctl.base file
sed -i -e 's/\\ $/\\/' /usr/lib/kamailio//kamctl/kamdbctl.base

# Create the database
kamdbctl create db.sqlite

# Create user accounts
kamctl add user1 user1
kamctl add user2 user2
kamctl add user3 user3
kamctl add user4 user4
kamctl add user5 user5
kamctl add user6 user6
kamctl add user7 user7
kamctl add user8 user8
kamctl add user9 user9
kamctl add user10 user10

#Start kamailio process
kamailio start
