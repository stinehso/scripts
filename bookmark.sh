#!/bin/bash

input="$HOME/.bookmarks"
if [ $# == 0 ]; then
    while read name; do
        bookmarkname=$(echo $name | cut -d \| -f 1)
        bookmark=$(echo $name | cut -d \| -f 2)
        export $bookmarkname=$bookmark
    done < "$HOME/.bookmarks"

elif [ $# == 2 ]; then
    case $1 in
        -a)
        echo $2"|"$PWD >> "$HOME/.bookmarks"
        ;;

        -r)
        var="$HOME/.bookmarks"
        sed -i '/^'${2}'/d' $var
        unset $2
        ;;

        *)
        echo "Invalid argument"
        ;;
    esac

else
    echo "Please provide a bookmarkname"
fi
