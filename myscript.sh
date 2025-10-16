
#!/bin/bash

# A simple interactive script to write a short bio, goals, and hobbies to a file

echo "👋 Hi! Let's create your 'About Me' file."
echo ""

# Collect user input
read -p "Juliet Nwaeze: " NAME
read -p "DevOps Engineer: " OCCUPATION
read -p "To Automate processes, use tools like Jenkins, GitHub Actions, or GitLab CI/CD to automate build, test, and deployment pipelines. Reduce manual errors and speed up software delivery. and empower people with disabilities: " GOALS
read -p "making money, designing, exploring new tech tools, and spending time with family: " HOBBIES

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
echo ""
echo "✅ Done! Your 'about_me.txt' file has been created successfully."
echo "You can open it using: cat about_me.txt"
