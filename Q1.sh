#!/bin/bash
n=0, Numb=0
Check=false

echo "Value of n : "
read n

touch fisrst_batch.txt
chmod 777 fisrst_batch.txt

for ((i=0; i<n; i++)); do
    echo "Enter $(($i+1)) Number: "
    read Numb

    if [ $Numb -gt 10 ] && [ $Numb -lt 100 ]; then
        if [ $Numb -le 1 ]; then
            echo $Numb >> fisrst_batch.txt
        else
            Check=true
            for ((j=2; j*j<=$Numb; j++)); do
                if [ $(($Numb % j)) -eq 0 ]; then
                    Check=false
                    break
                fi
            done
            if $Check; then
                echo "Wow, we've found a Prime Number"
            else
                echo $Numb >>fisrst_batch.txt
            fi
        fi	
	fi		
done
echo "User name: $USER" >> fisrst_batch.txt
echo "Time: $(date)" >> fisrst_batch.txt