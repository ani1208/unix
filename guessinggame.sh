#!/bin/bash

function guess {
	
	check=0	
	x=$(ls -1 | wc -l)
	while [[ $check -eq 0 ]]
	do
	   echo "Guess the number of files in directory:"
	   read response
	   if [[ $response == $x ]]
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
