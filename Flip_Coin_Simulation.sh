#!/bin/bash
tossCoin=$((RANDOM%2))
if [[ $tossCoin == 1 ]]
then 
    echo "Head."
else
    echo "Tail."
fi
