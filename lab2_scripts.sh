#!/bin/bash
# Author: Jasper Niemeyer
# Date: 2019-01-30


# 01 Accept a regular expression & file name from the user with a prompt
#    This is nearly identical to practice.sh but get regex and filename from prompt instead
echo "Enter a ReGex: (do not use quotes) "
read regex
echo "Enter the filename to search: "
read name
# 02 Feed the user's regular expression into grep and run into the user's chosen file
grep $regex $name
echo "----------------------------------" #for pretty output between problems

# 03 Hardcode some grep command calls which will
    # 04 Count the number of phone numbers in regex_practice.txt
    # for this we want to grep the lines that begin with 3 digits followed by a dash "-" (phone number) 
    # and pipe the output into wc-l which ouputs the number of lines
echo "There are: "
grep "\b[0-9][0-9][0-9]\-" regex_practice.txt | wc -l
echo "phone numbers in regex_practice.txt"
echo "----------------------------------"

    # 05 Count the number of emails in regex_practice.txt
    #    similarly for this one grep the lines that have any number of alphanumeric chars followed by "@" followed by "." followed by any number of char extension
    #     again pipe the output to wc -l
echo "There are: "
grep "[a-zA-Z0-9._%+]@[a-zA-Z0-9+].[a-zA-Z0-9+]" regex_practice.txt | wc -l
echo "email addresses in regex_practice.txt"
echo "-----------------------------------"

    # 06 List all of the phone numbers in the "303" area code and store the results in "phone_results.txt"
      # similar to #03 --> grep lines that begin with exactly 303 and write output to phone_results.txt
grep "^\b303\-" regex_practice.txt >> phone_results.txt
echo "phone numbers stored in phone_results.txt"
echo "-----------------------------------"
    
    # 07 List all of the emails NOT from geocities.com and store the results in "email_results.txt"

# pipe all email addresses invrse match grep -v write results to file. 
grep "[a-zA-Z0-9._%+]@[a-zA-Z0-9+].[a-zA-Z0-9+]" regex_practice.txt | grep -v "geocities.com$" >> email_results.txt 
echo "email results written"

    # 08 List all of the lines that match a command-line regular expresion and store the results in "command_results.txt"
# use regex in arg1 on regex_practice.txt
grep $1 regex_practice.txt >> command_results.txt
echo "command_results.txt written"

