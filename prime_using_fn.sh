#!/bin/bash
#Function to check if a number is prime

is_prime(){
  num=$1
  if [ $num -lt 2 ]; then
    echo "$num is not a prime number"
    return 1
  fi

  for (( i=2;i<=num/2;i++ )); 
  do
     if [ $(( num % i )) -eq 0 ]; then
       echo "$num is not a prime number"
       return 0
     fi

  done
  echo "$num is a prime number"
}

read -p "enter number:" num
is_prime $num