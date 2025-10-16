#!/bin/bash
# Shell script that runs inline JavaScript

echo "Running your 'About Me' script..."

node <<'EOF'
function aboutMe() {
  const info = {
    name: "Victoria Iria",
    profession: "Backend Developer, currently learning Devops.",
    location: "Abuja, Nigeria",
    background: "Bachelor’s degree in Human Physiology",
    experience: "Completed internship at Tidelab, learned Node.js, and developed multiple backend projects including Prime Choice and Insure Website.",
    currentFocus: "Upskilling in DevOps and expanding expertise in backend technologies.",
    passion: "Building impactful tech solutions, learning, and continuous growth."
  };

  console.log("👋 Hello there!");
  console.log(`I'm ${info.name}, a ${info.profession} Based in ${info.location}.`);
  console.log(`I hold a ${info.background}.`);
  console.log(`${info.experience}`);
  console.log(`Currently, I'm ${info.currentFocus}.`);
  console.log(`💡 Passion: ${info.passion}`);
}

aboutMe();
EOF

