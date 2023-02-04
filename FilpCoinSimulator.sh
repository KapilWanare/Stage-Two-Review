#!/bin/bash
Filp=$(($((RANDOM%10))%2))
if [$Filp -eq 1];
then
	echo 	"Head"
else
	echo "Tail"
fi