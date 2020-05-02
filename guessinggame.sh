#!/usr/bin/env bash
function count(){
  ls -l| grep "^-" | wc -l
}

file=$(count)
echo $file
function main(){
  while true
  do
    echo "How many files are in the current directory?"
    echo "Enter your guess, please: "
    read input
    if [[ $input =~ [^0-9] ]]
    then
        echo "It's not an Integer"
      else
        break;
    fi
  done

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
