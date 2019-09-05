#!/bin/bash

operator=$1;
shift;

[ $# -lt 1 ] && echo "You must provide at leat one number" && exit

res="$1";
shift;

case $operator in
    S)
    while [ $# -gt 0 ]
    do
        number="$1";
        shift;
        let "res+=number"
    done
    ;;

    P)
    while [ $# -gt 0 ]
    do
        number="$1";
        shift;
        let "res=res*number"
    done
    ;;

    M)
    while [ $# -gt 0 ]
    do
        number="$1";
        shift;
        if [ "$number" -gt "$res" ]; then
            res=$number
        fi
    done
    ;;

    m)
    while [ $# -gt 0 ]
    do
        number="$1";
        shift;
        if [ "$number" -lt "$res" ]; then
            res=$number
        fi
    done
    ;;
esac




echo $res;
