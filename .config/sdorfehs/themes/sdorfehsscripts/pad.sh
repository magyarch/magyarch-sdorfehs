#!/bin/sh

PAD=`sdorfehs -c "only" -c "set padding"`

if [ "$PAD" = "10 32 10 10" ]; then
    PAD="300 200 300 300"
else
    PAD="10 32 10 10"
fi

sdorfehs -c "set padding ${PAD}"
