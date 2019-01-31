#!/bin/bash
# Author : Dominic Pontious
# Date : 31Jan2019
# Lab 2 problems

# Here are the accepted paramaters for the lab
echo "Please enter the file name you would like to work with : "
read fileName
echo "Now enter the regular expression which we would like to use : "
read regExPrompted

# Here we are printing the results of the prompt
grep -E $regExPrompted $fileName

# Here we are using the hardcode grep commands

# First I want to make sure the files I am pushing the grep results into exists
if [ ! -e ~/Documents/Lab2/lab2_git_scripting/phone_results.txt ]
	then touch ~/Documents/Lab2/lab2_git_scripting/phone_results.txt
fi

if [ ! -e ~/Documents/Lab2/lab2_git_scripting/email_results.txt ]
	then touch ~/Documents/Lab2/lab2_git_scripting/email_results.txt
fi

if [ ! -e ~/Documents/Lab2/lab2_git_scripting/command_results.txt ]
	then touch ~/Documents/Lab2/lab2_git_scripting/command_results.txt
fi

# Count number of phones numbers
grep -Ec "[0-9]{3}-[0-9]{3}-[0-9]{4}" regex_practice.txt

# Count number of emails
grep -Ec "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}" regex_practice.txt

# List all phone numbers in the 303 area code and store in phone_results.txt
grep -E "303-[0-9]{3}-[0-9]{4}" regex_practice.txt > phone_results.txt

# List all emails from geocities.com and store the results in email_results.txt
grep -E "[A-Za-z0-9._%+-]+@geocities.com" regex_practice.txt > email_results.txt

# Command-line regular expresion and store results in command_results.txt
grep $1 regex_practice.txt > command_results.txt


