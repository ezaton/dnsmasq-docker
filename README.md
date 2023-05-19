# dnsmasq-docker

Run a DNS/DHCP service inside docker.
This comes with an exmaple of a config directory, containing the dnsmasq.conf file
Also, it comes with an example docker-compose.yaml file. Make sure to adjust the docker-compose
file to your actual network.

The compose file creates an ipvlan network (L2) with a class of IP addresses (you need to configure it)
matching your LAN environment. It will then create the container with NET_ADMIN capabilities, and with
a predefined IP address. 
It will map the local ./config directory to the container's /config directory, which is the only 
persistent directory relevant. It will modify the UID and GID to the ones specified int he ENV 
arguments (PUID and PGID), or otherwise - they will default to root.

