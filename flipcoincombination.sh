#!/bin/bash
	read -p "Enter number of times to flip " flips
	declare -A singlet=( 

	                     [Head]=0
	                     [Tail]=0

                                  )
	echo
	for((i= 1; i <= flips; i++ ))
	do
	    echo -n "Flip-$i is "
	    ((flip= RANDOM%2))
	    case $flip in 
	        0)
	            echo "Heads"
	            (( singlet[Head]++ ))
	            ;;
	        1)
	            echo "Tails"
	            (( singlet[Tail]++ ))
                    ;;
	    esac
	done
	for combination in ${!singlet[@]}
	do
	    percentage=$(( ${singlet[$combination]}  * 100 / flips ))
	    singlet[$combination]=$percentage
	    echo "percentage of $combination is ${singlet[$combination]}%"
	done

