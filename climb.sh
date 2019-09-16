#!/bin/bash

function climb {
    # if no arguments passed, default to 1
    if [ $# -eq 0 ]; then
    	times=1
    else
        times=$1
    fi

    str=""
    var="../"

    # add "../" as many times as argument suggests
    i=0
    while [ $i -lt $times ]; do
    	let i=$i+1
    	str="$str$var"
    done

    # climb that number of directories
    cd $str
}
