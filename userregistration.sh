#!/bin/bash 
echo "welcome to user registration"
pattern="^[[:upper:]]{1}[a-zA-Z]{3,}$"

pattern1="^[a-zA-Z0-9]{3,15}(|[.|_|%|+|-]?[a-zA-Z0-9]+)@[a-zA-Z0-9]{1,15}(.[a-z]{2,4})(|[.]?[a-z]{2,4})$"
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
read -p "Enter a  valid Email : " email
if [[ $email =~ $pattern1 ]]
then
	echo "Valid"
else
echo "Invalid"
fi
