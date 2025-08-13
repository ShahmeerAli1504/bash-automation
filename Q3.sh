#!/bin/bash
option=" ", Fname=" ", Per=0, Inverted_permission=0, updated=0, Lnum=0

while true; do 

echo "Select Any of the Below options"
echo "i-> Inverted Fname Permission."
echo "s-> Search string."
echo "c-> Copy Function."
echo "m-> Change modification date."
echo "e-> Exit."
echo "Enter option: "
read option

case $option in 

i)

	echo "Enter the Filename that you want to change the premission of: "
read Fname

if [ ! -e "$Fname" ]; then
    echo "Entered filename not found."
    exit 1
fi
Per=$(stat -c "%A" "$Fname")
echo "Current Permission : $Per"
Inverted_permission=$(echo "$Per" | tr -d 'rwx' | tr 'r' '-' | tr 'w' '-' | tr 'x' '-')
chmod a=$Inverted_permission "$Fname"
updated=$(stat -c "%A" "$Fname")
echo "Updated Permission are $updated"

;;	

s)

            echo "Enter Filename from where you want to search: " 
            read Fname
            echo "String you want from the entered file: " 
            read String
            grep  $String $Fname
;;

c)
echo "Enter the number of Lines you want to copy from each file: "
read Lnum
touch third_1_bash.txt
chmod 777 third_1_bash.txt
Fnames=(*)
for ((a = 0; a < ${#Fnames[@]}; a++)); do
    if ((a % 2 == 0)); then
        head -n "$Lnum" "${Fnames[a]}" >> third_1_bash.txt
    else
        tail -n "$Lnum" "${Fnames[a]}" >> third_1_bash.txt
    fi
done
echo "Done."
 ;;
m)

echo "Enter Filename: "
read Fname

touch third_2_bash.txt
chmod 777 third_2_bash.txt

if [ -e "$Fname" ]; then
    modifi=$(stat -c "%Y" "$Fname")
    recent_time=$(date +%s)
    D=$((recent_time - modifi))
    if ((D > 86400)); then
        touch -d "@$recent_time" "$Fname"
        echo "Modification done ."
    else
        echo "Modification not reqired."
    fi

echo "Filename : $Fname, New date: $(date -d "@$recent_time")" >> third_2_bash.txt

else
    echo "Entered filename not found."

fi

            ;;
e)

            echo "DONE WITH THE SCRIPT :)"

            exit 0

            ;;

        *)

            echo "Wrong Input ?."

            ;;


esac
done