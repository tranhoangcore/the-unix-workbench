#!/usr/bin/env bash
function count(){
  ls -a| wc -l
}

file=$(count)

function main(){
  echo "How many files are in the current directory?"
  echo "Enter your guess, please: "
  read input
  while [[ $input -ne $file ]]
  do
    if [[ $input -gt $file ]]
    then
      echo "No, It's high."
      echo "Enter again, please: "
      read input
    elif [[ $input -lt $file ]]
    then
      echo "No, It's small."
      echo "Enter again, please: "
      read input
    fi
  done
  if [[ $input -eq $file ]]
  then
    echo "Good job, you're done."
  fi
}

main
