#!/bin/bash
target_count=21
minimum_difference=2
heads_count=0
tails_count=0
flip_count=0
while((1))
do
((flip_count++))
echo -n "Flip_count is"
toss=$((RANDOM%2))
if(( toss == 0))
then
echo "Heads"
((heads_count++))
else
echo "tails"
((tails_count++))
fi
diff_bt_hc_tc=$((heads_count -tails_count))
if((heads_count == target_count && diff_bt_hc_tc >= minimum_difference))
then
echo "Heads won by $diff_bt_hc_tc points"
break
elif((tails_count == target && ${diff_bt_hc_tc#-} >= minimum_difference))
then
echo "tails won by ${diff_bt_hc_tc#-} points"
break
fi
done
echo "The Heads count is $head_count and Tails count $tails_count"