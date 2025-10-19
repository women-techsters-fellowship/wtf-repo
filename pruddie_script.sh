#!/bin/bash
# Script: pruddie_script.sh
# Author: Prudence Anumudu

# Function that displays your first and last name and a few things about you
pruddie_info() {
  first_name="Prudence"
  last_name="Anumudu"
  about_me="I’m passionate about technology and how it empowers people to solve real-world problems. I enjoy learning, building, and exploring innovations in Cloud and DevOps."

  echo "My name is $first_name $last_name."
  echo "$about_me"
}

# Call the function
pruddie_info
