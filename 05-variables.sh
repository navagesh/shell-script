#!/bin/#!/usr/bin/env bash

echo "please enter your username::"

read  -s USERNAME  #the value entered above will be automatically attached to USERNAME variable

echo "please enter your password::"
read -s PASSWORD

echo "username is: $USERNAME, password is:$PASSWORD" # Iam printing just for validtion,you should not print USERNAME and password in scripts
