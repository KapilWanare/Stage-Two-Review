#!/bin/bash
target_count=21
head_count=0
tails_count=0
flips_count=0
while((1))
do 
((flips_count++))
echo -n "Flip -$flips_count is"
toss=$((RANDOM % 2))
if((toss==0))
then 
echo "Heads"
((head_count++))
else
echo "Tails"
((tail_count++))
fi
if((head_count == target_count || tails_count == target_count))
then 
break
fi
done
echo "Heads won by $((head_count - tails_count))"
elif((tails_count > head_count))
then
echo "tails won by $((tails_count -head_count))"
else
echo "Its tie"
fi 