#!/bin/bash

#shell call
#sh testparams.sh -domains=python.org,somethingeelse.org,www.somemore.org -ratelimit=5

while [ $# -gt 0 ]; do
  case "$1" in
    -domains=*)
      domains="${1#*=}";;
    -ratelimit=*)
      ratelimit="${1#*=}";;
    *)
      printf "***************************\n"
      printf "* Error: Invalid argument.*\n"
      printf "***************************\n"
      exit 1
  esac
  shift
done


echo "$domains"
echo "$ratelimit"

#print the domain name variables
for i in $(echo $domains| tr "," "\n")
do
  # process
  echo "$i"
done
