#!/bin/bash

# Date: 19/10/2025
# Author: Audrey Amarh
# Description: A simple and fun bio script about me

# Function to display Audrey's bio
audreyBio() {
    firstName="Audrey"
    lastName="Amarh"
    occupation="Computer Science Student and DevOps Enthusiast"
    location="Accra, Ghana"
    hobby="Learning AI/ML, building projects, and exploring new tech ideas"

    echo "Hi there!"
    sleep 1
    echo "My name is $firstName $lastName."
    sleep 1
    echo "I’m a $occupation based in $location."
    sleep 1
    echo "In my free time, I enjoy $hobby."
    sleep 1

    echo
    read -p "Would you like to hear something interesting about me? (yes/no): " answer

    if [[ "$answer" == "yes" || "$answer" == "y" ]]; then
        echo
        echo "Hmm... let me think 🤔"
        sleep 2
        echo "Okay, here’s one: I love finding creative ways to solve problems!"
        sleep 1
        echo "Thanks for asking! 😊"
    else
        echo "No worries! It was nice meeting you. Have a great day!"
    fi
}

# Call the function
audreyBio

