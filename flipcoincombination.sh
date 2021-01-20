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

echo "DOBLET COMBINATION"

declare -A doublet=( 

                                [HH]=0
                                [HT]=0
                                [TH]=0
                                [TT]=0

                    )

for(( i = 1; i <= flips; i++ ))
do
    echo -n "Flip-$i is "
    (( coin1 = RANDOM%2 ))
    (( coin2 = RANDOM%2 ))

    #0 heads
    #1 tails
    case $coin1$coin2 in 
        00)
            echo "Head Head"
            (( doublet[HH]++ )) 
            ;;
        01)
            echo "Head Tail"
            (( doublet[HT]++ ))
            ;;
        10)
            echo "Tail Head"
            (( doublet[TH]++ ))
            ;;
        11)
            echo "Tail Tail"
            (( doublet[TT]++ ))
            ;;
    esac
done

for combination in ${!doublet[@]}
do
    percentage=$(( ${doublet[$combination]}  * 100 / flips ))
    doublet[$combination]=$percentage
    echo "percentage of $combination is ${doublet[$combination]}%"   
done

