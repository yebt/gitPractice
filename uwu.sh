#!/bin/bash

# TODO:
# - Make a message
# - load the -n param
# - Format it

while getopts ":n:" opt; do
  case $opt in
    n)
      NREP="$OPTARG"
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done

printMessg(){
    printf "|%3s| UWU |\n" "$1"
}

if [[ -z "$NREP" ]];then
    NREP=1
fi

echo "-----------"
for (( n=1; n<=$NREP; n++ ))
do
    printMessg $n
done
