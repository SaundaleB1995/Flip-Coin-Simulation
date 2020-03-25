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
tail=0
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

declare -A DoubletDict
DoubletDict+=(["HH"]=0 ["HT"]=0 ["TT"]=0 ["TH"]=0)
echo "Doublet Combination"
for ((i=0;i<$number;i++))
do
   check=$((RANDOM%4))
       case $check in 
          0)
          DoubletDict["HH"]=$((${DoubletDict["HH"]}+1))
          ;;
          1)
          DoubletDict["HT"]=$((${DoubletDict["HT"]}+1))
          ;;
          2)
          DoubletDict["TT"]=$((${DoubletDict["TT"]}+1))
          ;;
          3)
          DoubletDict["TH"]=$((${DoubletDict["TH"]}+1))
          ;;
        esac
done
for i in ${!DoubletDict[@]}
do
   DoubletDict[$i]=$(((${DoubletDict[$i]}*100)/$number))
   done
arrDoublet=($(for value in ${DoubletDict[@]}
do
   echo $value
done | sort ))
   max=${arrDoublet[3]}
   echo ${arrDoublet[@]}
      for key in ${!DoubletDict[@]}
      do    
           if [[ $max -eq ${DoubletDict[$key]} ]]
           then 
               echo "win combination $key"
            fi
       done
