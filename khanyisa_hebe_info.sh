#!/usr/bin/env bash
# Script: scripts/khanyisa_hebe_info.sh
# Function: khanyisa_hebe_info

khanyisa_hebe_info() {
  echo "Name: Khanyisa Hebe"
  echo "GitHub: @khkhanyisa"
  echo "Personal Email: hebekhanyi@gmail.com"
  echo "Professional Email: khhebe@outlook.com"
  echo "Location: Cape Town, South Africa"
  echo "Tech stack: Java, Python, HTML, CSS, JS, React"
  echo "Hackathons: Mukuru Cape Town 2025 (1st place), GirlCode Cape Town 2025 (1st place)"
  echo "Interests: Running, Reading, Art museums and exhibitions"
  echo "Favourite quote: 'You owe your dreams your courage'"
}

# Auto-run when executed directly:
if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  khanyisa_hebe_info
fi
'@ | Set-Content -NoNewline scripts/khanyisa_hebe_info.sh