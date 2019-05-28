# 3Tier-flow
What will be do:
deploy tcp listener and netcat to simulate traffic into a 3 tier web application stack
If you need to simulate tcp/udp listener as well as sending traffic to those listener. Could be usefull in Flow live demos

REQUIREMENTS:

-Deploy CentOS images, at lease 3 (1 as Frontend, 1 as appserver, 1 as db)

-change entries in file hosts_entries

-on all the three server execute (as root) #: cat hosts_files >> /etc/hosts

-on the DB server execute the db1 script
