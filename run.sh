#!/bin/bash

if [[ -z $1 || -z $2 ]]; then
  echo "./run.sh username password [maximum=50]"
  echo "If password is wrong, only public posts are downloaded"
  exit
fi

maximum=50
if [[ ! -z $3 ]]; then
  maximum=$3
fi

instagram-scraper &> /dev/null
if [ $? -eq 1 ]; then
  cmd=instagram-scraper
else
  cmd=$HOME/.local/bin/instagram-scraper
fi
$cmd -u $1 -p $2 --latest --maximum $maximum --destination \
dump --template \{date\}\{h\}\{m\}\{s\}-\{mediatype\} $1
