#! /bin/bash
	flip=$((RANDOM%2))
	if(($flip == 0))
	then
	    echo "Heads"
	else
	    echo "Tails"
	fi
