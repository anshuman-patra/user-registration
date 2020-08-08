#!/bin/bash 
echo "welcome to user registration"
pattern="^[[:upper:]]{1}[a-zA-Z]{3,}$"
read -p "Enter a First Name: " firstName
if [[ $firstName =~ $pattern ]]
then
	echo "Valid"
else
	echo "Invalid"
fi
read -p "Enter a Last Name: " lastName
if [[ $lastName =~ $pattern ]]
then
	echo "Valid"
else
	echo "Invalid"
fi
