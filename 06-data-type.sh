#!/bin/#!/usr/bin/env bash


NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))

echo "Total::$SUM"
echo " how many args passed :: $#"
echo "all args passed:: $@"
echo "script name::$0"
