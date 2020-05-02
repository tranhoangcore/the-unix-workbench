#!/usr/bin/env bash
function count(){
  ls -1A |  wc -l
}

file=$(count)
function main(){
  while true
  do
    echo "How many files are in the current directory?"
    echo "Enter your guess, please: "
    read input
    if [[ $input =~ [^0-9] ]]
    then
        echo "It's not an Integer"
    elif [[ $input -gt $file ]]
      then
        echo "No, It's high."
    elif [[ $input -lt $file ]]
      then
        echo "No, It's small."
    elif [[ $input -eq $file ]]
      then
        echo "Good job, you're done."
        break
    fi
  done
}

main
