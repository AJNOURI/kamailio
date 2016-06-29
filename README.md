# kamailio-alpine

Edit the file **/etc/kamailio/kamctlrc**  
Uncomment and set the container IP address
> SIP_DOMAIN=X.X.X.X

Set SQLITE as the database
> DBENGINE=SQLITE

Set the path to SQLITE database, yet to be created
> DB_PATH="db.sqlite"

From the command line, create the database
> kamdbctl create db.sqlite

Start kamailio process
> /etc/init.d/kamailio start
