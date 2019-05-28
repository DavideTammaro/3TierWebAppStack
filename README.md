# 3Tier-flow
What will be do:
deploy tcp listener and netcat to simulate traffic into a 3 tier web application stack
If you need to simulate tcp/udp listener as well as sending traffic to those listener. Could be usefull in Flow live demos

Install tasks:

-Deploy CentOS images, at lease 3 (1 as Frontend, 1 as appserver, 1 as db)

-on every server donwload the file hosts_entries and change entries in file reflecting the actual configuration

-on all the three server execute (as root) #: cat hosts_files >> /etc/hosts

-on the DB server execute the db1.sh script

-on the appserver execute the appserver1.sh script

-on the webserver execute the webserver1.sh script

Use Flow policy to permit/deny traffic

