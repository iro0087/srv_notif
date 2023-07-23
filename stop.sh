#!/bin/bash

t=1

nb_server=$(ls *sh | wc -l)

while ((t < nb_server))
do

        kill $(ps aux | grep "server_${t}" | awk 'NR==1 {print $2}')

        t=$((t+1))

done
