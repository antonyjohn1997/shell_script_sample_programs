#!/bin/bash
#reverse a string

read -p "enter a string:" str
rev_str=$(echo $str | rev)
echo "Reversed string is $rev_str"
