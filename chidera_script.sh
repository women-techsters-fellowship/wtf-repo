#!/bin/bash

# ============================================================
# Script Name: chidera_script.sh
# Author: Chidera Alaeto
# Description: Displays personal and professional info about Chidera
# ============================================================

# Define a function that introduces Chidera
chidera_info() {
  echo "============================================================"
  echo "                  MEET CHIDERA ALAETO "
  echo "============================================================"
  echo ""
  echo " Hello there! My name is Chidera Alaeto."
  echo "I'm an aspiring DevOps Engineer based in Lagos, Nigeria."
  echo ""
  echo " Location: Lagos, Nigeria"
  echo " Occupation: Data Annotator"
  echo " Interests: Football, Learning New Technologies, and Continuous Growth."
  echo ""
  echo " About Me:"
  echo "I’m a tech enthusiast passionate about  building efficient, scalable systems."
  echo "My journey into DevOps has been driven by curiosity and a love for problem-solving."
  echo "I enjoy exploring tools like AWS, Docker, and CI/CD pipelines that help automate and improve workflows."
  echo " I believe learning is continuous, and every project is a step toward mastery."
  echo "Outside tech, I’m a big football lover and always eager to learn something new."
  echo ""
  echo " Connect with me on LinkedIn:"
  echo "   https://www.linkedin.com/in/chidera-alaeto"
  echo ""
  echo "============================================================"
  echo "Thank you for taking a moment to know me- lets build something amazing!"
  echo "============================================================"
}

# If the script is run directly, execute the function
if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  chidera_info
fi


