#!/bin/bash
echo "Welcome to Flip Coin Simulation "
echo "Flip Coin Showing Head Or Tail"
tossCoin=$((RANDOM%2))
if [[ $tossCoin == 1 ]]
then 
    echo "-->Head."
else
    echo "-->Tail."
fi
