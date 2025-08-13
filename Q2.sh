#!/bin/bash
touch second_bash.txt
exec > second_bash.txt
chmod 777 second_bash.txt
if [ ! -d "Assignment_workdir" ]; then
    mkdir Assignment_workdir
fi

cp assignment_data.txt Assignment_workdir/

echo "directory: $(pwd)" >> second_bash.txt

first_var="I Love OS!"

echo $first_var >> second_bash.txt

grep "80" assignment_data.txt >> second_bash.txt

second_var=$(ls Assignment_workdir/)
while read -r file; do
    
	echo "$file" >> second_bash.txt
done <<< "$second_var"