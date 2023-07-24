#!/bin/bash

server=to_replace

a=0

while true
do

        ping $server -c 2

        if [[ "$?" = 0 && "$a" = 0 ]]
        then

                notify-send "Server online" "${server}"

                python3 ~/server_all/play2.py &

                a=1

        fi

        sleep 0.1

        ping $server -c 2

        if [[ "$?" = 1 && "$a" = 1 ]]
        then

                notify-send "Server disconnected" "${server}"

                python3 ~/server_all/play2b.py &

                a=0

        fi

done
