#!/bin/bash

nb_line=$(cat server_list.txt | wc -l)

nb_line=$((nb_line+1))

t=1

while ((t < $nb_line))
do

        new_file="server_${t}.sh"

        touch $new_file

        cat from.sh > "${new_file}"

        replacement=$(sed -n "${t}p" server_list.txt)

        sed -i "s/to_replace/${replacement}/g" $new_file

        t=$(($t+1))

done
