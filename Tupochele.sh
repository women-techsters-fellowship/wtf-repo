#!/bin/bash
# Script: Tupochele.sh
# ==========================================
# In class activity: Introduction about yourself
# Author: Tupochele Chatuwa
# Date:   October 16, 2025
# File:   Tupochele.sh
# Description:
#   Displays my first name, last name, and some information.
# ==========================================

# Define a function
about_me() {
    first_name="Tupochele"
    last_name="Chatuwa"
    course="Mechanical Engineering and DevOps"
    interest="IoT Product Development and Automation"
    hobby="Learning and building smart systems, and watching F1"

    echo "=============================="
    echo "         ABOUT ME"
    echo "=============================="
    echo "Name: $first_name $last_name"
    echo "Course: $course"
    echo "Interest: $interest"
    echo "Hobby: $hobby"
    echo "=============================="
}

# Call the function
about_me

