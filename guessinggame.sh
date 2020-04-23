#!/bin/bash

function guess {
	
	check=0	
	x=$(ls -al | grep ^[-] | wc -l)
	while [[ $check -eq 0 ]]
	do
	   echo "Guess the number of files in directory:"
	   read response
	   if ! [[ $response =~ ^[0-9]+$ ]] 
	   then 
	      echo "Please enter a valid number!"
	   elif [[ $response == $x ]]
	   then
	      echo "Correct Guess!"
	      check=1
	      break
	   elif [[ $response -lt $x ]]
	   then
	      echo "Too low"
	   else 
	      echo "Too High"
	   fi

	done
}


guess   
