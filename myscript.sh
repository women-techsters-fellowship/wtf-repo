#!/bin/bash

# A simple script to write a short bio, goals, and hobbies 

# Variables
NAME="Juliet Nwaeze"
OCCUPATION="DevOps Engineer"
GOALS="To Automate processes, use tools like Jenkins, GitHub Actions, or GitLab CI/CD to automate build, test, and deployment pipelines. Reduce manual errors and speed up software delivery. and empower people with disabilities."
HOBBIES="making money, designing, exploring new tech tools, and spending time with family"

# Output file
OUTPUT_FILE="about_me.txt"

# Write information to file
echo "About Me" > $OUTPUT_FILE
echo "---------" >> $OUTPUT_FILE
echo "Name: $NAME" >> $OUTPUT_FILE
echo "Occupation: $OCCUPATION" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE
echo "My Goals:" >> $OUTPUT_FILE
echo "$GOALS" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE
echo "My Hobbies:" >> $OUTPUT_FILE
echo "$HOBBIES" >> $OUTPUT_FILE

# Display success message
echo "✅ Your 'about_me.txt' file has been created successfully!"

