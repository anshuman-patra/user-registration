#!/bin/bash 
echo "welcome to user registration"
pattern="^[[:upper:]]{1}[a-zA-Z]{3,}$"

pattern1="^[a-zA-Z0-9]{3,15}(|[.|_|%|+|-]?[a-zA-Z0-9]+)@[a-zA-Z0-9]{1,15}(.[a-z]{2,4})(|[.]?[a-z]{2,4})$"
pattern2="^[0-9]{1,4}[[:space:]][0-9]{10}$"
pattern3="^([a-zA-Z0-9@*#]{8})$"
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
read -p "Enter a phone number and also mention space betwwen  your country code : " phoneNumber
if [[ $phoneNumber =~ $pattern2 ]]
then
	echo "Valid"
else
	echo "Invalid"
fi

read -p "enter valid password in 8 minimum " password
if [[ ${#password} -ge 8 ]]
then
	echo " password is Valid  as containg 8 character"
else
	echo "password  is Invalid  as  not containg 8 character"
fi
if [[ ${#password} -ge 8 && $password == *[[:upper:]]* ]]
then
	echo " password is Valid as  containing  one upper case character"
else
	echo "pasword is Invalid as not containing one upper case character"
fi
if [[ ${#password} -ge 8 && $password == *[[:upper:]]* && $password == *[0-9]* ]]
then
	echo " password Valid as cointaining 1 numeric value"
else
	echo "password is Invalid as not containing 1 numeric value "
fi
