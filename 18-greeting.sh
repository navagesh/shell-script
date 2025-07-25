#!/bin/#!/usr/bin/env bash

NAME=" "
WISHES="Good morning"
USAGE(){
  echo "USAGE:: $(username $0) -n <name> -w <wishes>"
  echo "option::"
  echo "-n,specify the name (mandatory)"
  echo "-w,specify the wishes, default is good morning"
  echo "-h,display help and exit"

}
while getopts ":n:w:h" opt; do
  case $opt in
    n) NAME="$OPTARG";;
    w) WISHES="$OPTARG";;
    \?) echo "invalid options: -"OPTARG" >&2; USAGE; EXIT;;
    :) USAGE ; exit;;
    h) USAGE; exit;;
  esac
done
#if [ -z "$NAME" ] || [ -z "$WISHES" ]; then
if [ -z "$NAME" ]; then # now wishes is optional
    #echo "ERROR: Both -n and -w are mandatory options."
    echo "ERROR: -n is mandatory."
    USAGE
    exit 1
fi

echo "Hello $NAME. $WISHES. I have been learning Shell Script."
