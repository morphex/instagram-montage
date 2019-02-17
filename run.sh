#!/bin/bash

if [[ -z $1 ]]; then
  echo "Need username* and password as arguments"
  exit
fi
if [[ -z $2 ]]; then
  echo "Need username and password* as arguments"
  exit
fi

/home/morphex/.local/bin/instagram-scraper -u $1 -p $2 --latest --destination dump --template \{date\}\{h\}\{m\}\{s\}-\{mediatype\} $1
