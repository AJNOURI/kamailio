# kamailio-alpine

Start the script to initially configure the server parameters and start the server process

**sh start-server.sh**

The script will set the parameters in the file **/etc/kamailio/kamctlrc**  
Set the container IP address
> SIP_DOMAIN=X.X.X.X

Set SQLITE as the database
> DBENGINE=SQLITE

Set the path to SQLITE database, yet to be created
> DB_PATH="db.sqlite"

From the command line, create the database
> kamdbctl create db.sqlite

Create user database
> kamctl add user1 user1  
> kamctl add user2 user2  
> kamctl add user3 user3  
> kamctl add user4 user4  
> kamctl add user5 user5  
> kamctl add user6 user6  
> kamctl add user7 user7  
> kamctl add user8 user8  
> kamctl add user9 user9  
> kamctl add user10 user10  

Start kamailio process
> /etc/init.d/kamailio start
