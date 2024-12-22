#!/bin/bash
# Function to check if a number is Armstrong

is_armstrong(){

    number=$1
    sum=0
    temp=$number
    num_digits=${#number}
    while [ $temp -gt 0 ];
    do
      digit=$((temp % 10))
      sum=$(( sum + digit**num_digits))
      temp=$((temp / 10))

    done
    if [ $sum -eq $number ]; then
       echo "$number is an armstrong number"
    else
       echo "$number is not a armstrong number"   
       
    
}

read -p "enter a number:" number
is_armstrong $number