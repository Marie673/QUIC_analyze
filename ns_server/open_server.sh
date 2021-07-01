#!/bin/bash

echo open server
sudo ip netns exec server ./cli -c server.crt -k server.key 10.1.1.1 55555
