#!bin/bash

##This script is the first script in the assignment which primarily monitors IP addresses and other network related things.

##Detect ip addresses trying to gain access to the server
pktstat -n | tee -a midnight.network.monitoring_$(date +"%F").txt

##All logins for a specific user
lastlog "$USER" | tee -a midnight.network.monitoring_$(date +"%F").txt

##All logins for all users
last | tee -a midnight.network.monitoring_$(date +"%F").txt

##Use on server between midnight and 6AM
who | tee -a midnight.network.monitoring_$(date +"%F").txt #Displays what users are currently on the server
w   | tee -a midnight.network.monitoring_$(date +"%F").txt #Provides more information about users currently logged into the server.
sysdig -c spy_users | tee -a midnight.network.monitoring_$(date +"%F").txt ## Displays current users and who has run what command on the server. This utilizes sysdig, a server monitoring system.

##Using crontab -e command, you can schedule this script to run every 10 minutes between midnight and 6am, every single day.
