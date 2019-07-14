#!/bin/bash

if [[ -z $1 ]]; then
  echo "Need username* and password as arguments"
  exit
fi
if [[ -z $2 ]]; then
  echo "Need username and password* as arguments"
  exit
fi

instagram-scraper &> /dev/null
if [ $? -eq 1 ]; then
  cmd=instagram-scraper
else
  cmd=$HOME/.local/bin/instagram-scraper
fi
$cmd -u $1 -p $2 --latest --destination \
dump --template \{date\}\{h\}\{m\}\{s\}-\{mediatype\} $1
