#!/bin/bash
for i in {1..10} 
do
    echo "Welcome $i times"
    ./build/bin/echo_client client 127.0.0.1 &
    usleep 150000
done 

# Default 
#
# sudo sysctl -w net.core.rmem_default=212992
# sudo sysctl -w net.core.rmem_max=212992

# Upgrade to 25 Mb
#
# sudo sysctl -w net.core.rmem_default=26214400
# sudo sysctl -w net.core.rmem_max=26214400
