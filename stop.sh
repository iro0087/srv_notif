#!/bin/bash

notify-send "End of the programm"

t=1

nb_server=$(cat server_list.txt | wc -l)

while ((t < nb_server))
do

        kill $(ps aux | grep "server_${t}" | awk 'NR==1 {print $2}')

        t=$((t+1))

done
