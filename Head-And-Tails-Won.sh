#!/bin/bash

echo "Flip Coin Simulator"
echo "Number Of Times user Want To Filp The Coins :"
read flip
echo $flip
countHead=0
CountTail=0
declear -A noofCounts
for((i=0;i<flip;i++))
do
if [$((RANDOM%2)) -eq 1]
then 
((countHead++))
else
((countTail++))
fi
done
echo "heads="$countHead
echo "Tails="$countTail
noofCounts[Tail]=$countTail
noofCounts[heads]=$countHead
echo ${noofCounts[@]}

function Winning(){
array=($(for size in ${noofCounts[@]}
do
done | sort))
echo "Sorted Value"
echo  ${rray[@]}
lastindex=$((${#array[@]}-1))
MaxWin=${array[$lastindex]}
for i in ${!noofCounts[@]}
do
if [${noofCount[$i]} -eq $MaxWin]
then
	echo "Maximum time Win "$i
fi
}
Winning








