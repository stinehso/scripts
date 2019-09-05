#!/bin/bash

case $1 in
    no)
    ;;

    sk)
    export TZ=":Asia/Seoul"
    ;;

    us)
    export TZ=":America/New_York"
    ;;
esac

while true;
do
    clear
    echo $(date)
    sleep 1
done
