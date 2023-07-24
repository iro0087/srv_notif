#!/bin/bash

nb_server=$(ls *sh | wc -l)

nb_server=$((nb_server - 3))

t=1

while ((t < nb_server))
do
       
       bash ~/server_all/server_${t}.sh & 

       t=$((t+1))

       sleep 0.2

done
