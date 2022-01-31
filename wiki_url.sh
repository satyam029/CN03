#!/bin/bash
echo "----Welcom----"
if [[ -z "$1" ]]; then
  echo "Please enter search keyword"
  read term
elif [[ -n "$1" ]]; then
  search_key="$*"
fi
term="${term// /_}"
echo "------Seraching wikipedia's related -:  $term"

link="https://en.wikipedia.org/wiki/$term"

echo "URL FOUND : $link"
resultant_dir=wiki_link.txt
echo "${link}" >> "$resultant_dir"
echp "----Thankyou----"
