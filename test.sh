#!/bin/bash

#RATE Mbps
#DELAY ms
# shellcheck disable=SC2188
<< COMMENTOUT
for r in 10 50 100
do
  rate=$(("${r}"*1024*1024))
  burst=$((("${rate}"/8)/250))
  limit=$(("${burst}"*10))
  for d in 10 50 100
  do
    delay=${d}
    sudo ip netns exec server tc qdisc del dev server_net0 root
    sudo ip netns exec client tc qdisc del dev client_net0 root
    sudo ip netns exec server tc qdisc add dev server_net0 root handle 1:0 tbf rate ${rate}bit burst ${burst}b limit ${limit}b
    sudo ip netns exec server tc qdisc add dev server_net0 parent 1:1 handle 10:1 netem delay ${delay}ms
    sudo ./ns_client/client.sh s_r${r}_d${d}
  done
done
COMMENTOUT
<< COMMENTOUT
for r in 10 50 100
do
  rate=$(("${r}"*1024*1024))
  burst=$((("${rate}"/8)/250))
  limit=$(("${burst}"*10))
  for d in 10 50 100
  do
    delay=${d}
    sudo ip netns exec server tc qdisc del dev server_net0 root
    sudo ip netns exec client tc qdisc del dev client_net0 root
    sudo ip netns exec client tc qdisc add dev client_net0 root handle 1:0 tbf rate ${rate}bit burst ${burst}b limit ${limit}b
    sudo ip netns exec client tc qdisc add dev client_net0 parent 1:1 handle 10:1 netem delay ${delay}ms
    sudo ./ns_client/client.sh c_r${r}_d${d}
  done
done
COMMENTOUT
for R in 10 50 100
do
  rate=$(("${R}"*1024*1024))
  burst=$((("${rate}"/8)/250))
  limit=$(("${burst}"*10))
  for D in 10 50 100
  do
    delay=${D}
    sudo ip netns exec server tc qdisc del dev server_net0 root
    sudo ip netns exec server tc qdisc add dev server_net0 root handle 1:0 tbf rate ${rate}bit burst ${burst}b limit ${limit}b
    sudo ip netns exec server tc qdisc add dev server_net0 parent 1:1 handle 10:1 netem delay ${delay}ms
    sudo ip netns exec client tc qdisc del dev client_net0 root
    sudo ip netns exec client tc qdisc add dev client_net0 root handle 1:0 tbf rate ${rate}bit burst ${burst}b limit ${limit}b
    sudo ip netns exec client tc qdisc add dev client_net0 parent 1:1 handle 10:1 netem delay ${delay}ms
    sudo ./ns_client/client.sh sc_r${R}_d${D}
  done
done