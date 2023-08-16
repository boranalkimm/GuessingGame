#!usr/bin/env bash

function retrieve_number_of_files {
	local number_of_files=$(ls -qA | wc -l)
	echo $number_of_files
}

guess_correct=0
number_of_files=$(retrieve_number_of_files)
current_guess=0

while [[ $guess_correct -eq 0 ]]
do
	echo "Guess the number of files in the directory:"
	read current_guess
	if [[ $current_guess -lt $number_of_files ]]
	then
		echo "Your guess is too low."
	elif [[ $current_guess -gt $number_of_files ]]
	then
		echo "Your guess is too high."
	else
		echo "Congratulations! You have correctly guessed the number of files in the directory."
		let guess_correct=1
	fi
done
