#!/bin/bash
# shellcheck disable=SC2054
target=("10MB" "50MB" "100MB" "150MB")
time=5
rm -rf result/"$1"
mkdir result/"$1"


sudo ip netns exec server iperf -s &
# shellcheck disable=SC2129
echo "server:" >> result/"$1"/iperf.txt 2>&1
sudo ip netns exec server tc qdisc show dev server_net0 >> result/"$1"/iperf.txt 2>&1
(sudo ip netns exec client iperf -c 10.1.1.1) >> result/"$1"/iperf.txt 2>&1
sudo ip netns exec server killall iperf

echo "" >> result/"$1"/iperf.txt 2>&1

sudo ip netns exec client iperf -s &
# shellcheck disable=SC2129
echo "client:" >> result/"$1"/iperf.txt 2>&1
sudo ip netns exec client tc qdisc show dev client_net0 >> result/"$1"/iperf.txt 2>&1
(sudo ip netns exec server iperf -c 10.1.1.2) >> result/"$1"/iperf.txt 2>&1
sudo ip netns exec client killall iperf

# shellcheck disable=SC2068
for t in ${!target[@]}
do
  echo "downloading ${target[t]}"
  # shellcheck disable=SC2004
  for((i=1; i<=${time};i++));do
    echo "time is ${i}"
    (time -p sudo ip netns exec client ./cli -P /dummy_files/"${target[t]}" 10.1.1.1 55555) >> result/"$1"/"${target[t]}".txt 2>&1
    sudo rm "${target[t]}".downloaded
  done
done
