#!/bin/bash
doping(){
ping -c 3 192.168.1.111 > /dev/null
}
dook(){
echo "eeeeeeeeeeeee"
sleep 5
}
doerror(){
ip a add 192.168.1.111/24 dev eth1:0
echo "oh no, shit happens"
}
while true; do {
doping && dook || doerror
}
done