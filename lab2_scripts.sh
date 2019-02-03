#!/bin/bash
# Author: Kaelen Guthre
# Date: 1/30/2019

#Accept regex and filename from user
echo "Enter regex: "
read regex
echo "Enter filename: "
read fileName

#Feed regex into grep 
grep regex fileName 

#phone number
grep -o -E  "^[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]$" regex_practice.txt |wc -l

#emails
grep -o -E  "^[a-zA-Z0-9_-.]+@[a-zA-Z0-9-]+\.[a-zA-Z]{2,}$"  regex_practice.txt |wc -l

#303 phone numbers
grep "303-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]$" regex_practice.txt > phone_results.txt

#@geocities emails
grep -o -E  "^[a-zA-Z0-9_-.]+@geocities.com$" regex_practice.txt > email_results.txt

#match command line regex
grep $1 $2 > command_results.txt 
