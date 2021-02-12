#sudo ip link add link eth1 name eth1.10 type vlan id 10
sudo ip link set eth1 up
#sudo ip link set eth1.10 up
#sudo ip addr add 10.1.1.1/24 dev eth1.10
sudo ip addr add 10.1.1.1/24 dev eth1
#sudo ip route add 10.1.0.0/16 via 10.1.1.254 dev eth1.10
sudo ip route add 10.1.0.0/16 via 10.1.1.254 dev eth1

sudo ip netns add blue
sudo ip link set eth2 netns blue
#sudo ip -n blue link add link eth2 name eth2.20 type vlan id 20
sudo ip -n blue link set eth2 up
#sudo ip -n blue link set eth2.20 up
#sudo ip -n blue addr add 10.1.2.1/24 dev eth2.20
sudo ip -n blue addr add 10.1.2.1/24 dev eth2
#sudo ip -n blue route add 10.1.0.0/16 via 10.1.2.254 dev eth2.20
sudo ip -n blue route add 10.1.0.0/16 via 10.1.2.254 dev eth2

