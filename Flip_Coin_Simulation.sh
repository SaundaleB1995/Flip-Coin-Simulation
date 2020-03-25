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


echo "Enter a flip flop"
number=10
ta=0
head=0

for(( i=0; i<$number;i++))
do
   if [[ $((RANDOM%2)) -eq 1 ]]
   then
      
      tail=`expr $tail + 1`
      
    else
       
       head=`expr $head + 1`
       
    fi 
done

declare -A TossCoin
TossCoin[tail]=$tail 
TossCoin[head]=$head

h_percentage=$((100*$head/$number))

echo "Head Percentage = " $h_percentage "%"

t_percentage=$((100*$tail/$number))

echo "Tail Percentage = " $t_percentage "%"

echo "Head" ${TossCoin[head]}
echo "Tail" 
echo ${TossCoin[@]}
