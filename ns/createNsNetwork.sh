#!/bin/bash

sudo ip -all netns delete

sudo ip netns add server
sudo ip netns add client

sudo ip link add server_net0 type veth peer name client_net0

sudo ip link set server_net0 netns server up
sudo ip link set client_net0 netns client up

sudo ip netns exec server ip addr add 10.1.1.1/24 dev server_net0
sudo ip netns exec client ip addr add 10.1.1.2/24 dev client_net0
