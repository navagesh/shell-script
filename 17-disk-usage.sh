#!/bin/#!/usr/bin/env bash
DISK_USAGE=$(df -hT | grep -vE 'tmp/file')
DISK_THRESHOLD=1
message=""
while IFS= read line
do
  usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)
  partition=$(echo $line | awk '{print $1F}')
  if [ $usage -ge $DISK_THRESHOLD ]
  then
    message+="High Disk usage on $partition: $usage\n"
  fi
done <<< $DISK_USAGE
echo -e "message:$message"

echo "$message" | mail -s "High Disk Usage" 10tr1a0445@gmail.com
