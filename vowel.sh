#!/bin/bash

echo "Enter a line of text"
read line
vowel_count=0

for (( i=0; i<${#line}; i++ )); do
    char=${line:$i:1}
    case $char in
        [aeiouAEIOU])
            ((vowel_count++))
            ;;
    esac
done

echo "The number of vowels in the line of text: $vowel_count"



