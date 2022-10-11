#!/bin/bash
###########################################
## Deps: tcpdump
##
## Be sure to check the license file.
##
## Script to dump traffic
###########################################

date +"%Y-%m-%d_%H-%M-%Z" | xargs -I {} bash -c "sudo tcpdump -nq -s 0 -i $1 -w ./dump-$1-{}.pcap"
