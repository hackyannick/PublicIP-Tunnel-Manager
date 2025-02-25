#!/bin/bash
####################################
# Configuration file for tunnel.sh #
####################################
tun_proto="wg"

##############
# Interfaces #
##############
nic="ens192"
tun_if="wg0"

##############
# Addresses  #
##############
# Public IP used for tunnel. Should be the main IP of your VPS
local_ip="213.202.211.167"
# Tunnel IP + network
tun_local_addr="172.20.1.1/30"
# Tunnel IP of your home router
tun_remote_addr="172.20.1.2"

#################
# IPv6 settings #
#################
ipv6="false"
local_ip6=""
tun_local_addr6=""
tun_remote_addr6=""

###############
# MTU setting #
###############
# GRE: Should be 1476 for normal ethernet WAN and 1468 for PPPoE connections
# WG: 1420 is default for Wireguard
tun_mtu="1300"

################
# Public IP(s) #
################
# Define your public IPs that will be routed to your home router
# Use an array ( "IP1/CIDR" "IP2 "IP3" ... )
public_ip=( "213.202.208.195/32" )
public_ip6=( )

################################
# WG settings (tun_proto = wg) #
################################
config="/etc/wireguard/$tun_if.conf"

# Server
listenPort="50000"
privateKey=""

# Client
publicKey=""
