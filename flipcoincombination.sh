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

echo "TripletCombination"


declare -A triplet=( 
                      [HHH]=0
                      [HHT]=0
                      [HTH]=0
                      [HTT]=0
                      [THH]=0
                      [THT]=0
                      [TTH]=0
                      [TTT]=0

                             )
for((i = 1; i <= flips; i++ ))
do
    echo -n "Flip-$i is "
    (( coin1 = RANDOM%2 ))
    (( coin2 = RANDOM%2 ))
    (( coin3 = RANDOM%2 ))

    #0 for heads
    #1 for tails
    case $coin1$coin2$coin3 in 
        000)
            echo "Head Head Head"
            (( triplet[HHH]++ )) 
            ;;
        001)
            echo "Head Head Tail"
            (( triplet[HHT]++ ))
            ;;
        010)
            echo "Head Tail Head"
            (( triplet[HTH]++ ))
            ;;
        011)
            echo "Head Tail Tail"
            (( triplet[HTT]++ ))
            ;;
        100)
            echo "Tail Head Head"
            (( triplet[THH]++ )) 
            ;;
        101)
            echo "Tail Head Tail"
            (( triplet[THT]++ ))
            ;;
        110)
            echo "Tail Tail Head"
            (( triplet[TTH]++ ))
            ;;
        111)
           echo "Tail Tail Tail"
            (( triplet[TTT]++ ))
            ;;
    esac
done
for combination in ${!triplet[@]}
do
    percentage=$(( ${triplet[$combination]}  * 100 / flips ))
    triplet[$combination]=$percentage
    echo "percentage of $combination is ${triplet[$combination]}%"
done

