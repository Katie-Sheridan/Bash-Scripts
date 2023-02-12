#!/bin/bash

echo "Enter the name of the new Pokemon"
read username

#check to see if the username already exists

if id "$username" >/dev/null 2>&1; then
	echo 'Pokemon already caught'
	exit 1
fi
echo "Adding pokemon to the pokedex"
#create the new dex entry
sudo useradd -m $username
#set the password for the new pokemon
#echo "Enter a new password for the new pokemon"
#passwd $username
echo "Pokemon $username has been added successfully."
