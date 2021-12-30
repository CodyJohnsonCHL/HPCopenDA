#! /bin/sh
#

qsub start_d3d.pbs

while [ ! -f ./finished ]; do sleep 1; done
sleep 300
