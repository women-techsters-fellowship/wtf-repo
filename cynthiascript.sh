#!/bin/bash

#Date: 16/10/2025
#Author: Cynthia Nwankwo
#This script explains the basic function about Cynthia Nwankwo


#Define the function
 cynthiaBio() {
	firstName="Cynthia"
	lastName="Nwankwo"
	occupation="Software Developer"
	location="Nigeria"
	hobby="Exploring cloud technology and Watching movies"

	
	echo "Hi there"
	sleep 1
	echo "My name is $firstName $lastName"
	sleep 1.5
	echo "I am a $occupation based in $location"
	sleep 1.5
	echo "In my free time, I enjoy $hobby"
	sleep 2

	read -p "Would you like to know a little secret about me? 😊 (yes/no): " secret
	sleep 1.5

	if [[ "$secret" == "yes" || "$secret" == "y" || "$secret" == "YES" ]]; then
		echo "- - - - - -- -- - -- --- -- --- - ---- - -- --- --- - - -"
		sleep 1
		echo "- - - - - -- -- - -- --- -- --- - ---- - -- --- --- - - -"
		sleep 1
		echo "- - - - - -- -- - -- --- -- --- - ---- - -- --- --- - - -"
		sleep 1
		echo "- - - - - -- -- - -- --- -- --- - ---- - -- --- --- - - -"
		sleep 1
		echo "- - - - - -- -- - -- --- -- --- - ---- - -- --- --- - - -"
		sleep 1
		echo "- - - - - -- -- - -- --- -- --- - ---- - -- --- --- - - -"
		sleep 1
		echo "- - - - - -- -- - -- --- -- --- - ---- - -- --- --- - - -"
		sleep 1
		echo "- - - - - -- -- - -- --- -- --- - ---- - -- --- --- - - -"
		sleep 1
		echo "- - - - - -- -- - -- --- -- --- - ---- - -- --- --- - - -"
		sleep 2
		echo "Gotchaaaaaa. If i tell you, then it is no longer a secret😉"
		sleep 1
		echo "Have a beautiful day"
	else
		echo "Its a pleasure  meeting you. Have a beautiful day"
	fi
}

#Call the function
cynthiaBio

