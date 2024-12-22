#!/bin/bash
# count words in a file 

read -p "enter file name :" file
if [ -f "$file" ]; then
  word_count=$(wc -w < "$file")
  echo "the file $file has $word_count words"
else
  echo "file does not exist"  
fi