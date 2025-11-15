#!/bin/bash

# -------------------------------
# Colors
# -------------------------------
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
WHITE="\e[97m"
RESET="\e[0m"

# -------------------------------
# ASCII Art Banner (Fade-in)
# -------------------------------
banner() {
lines=(
"████████╗███████╗███████╗ █████╗ ██╗   ██╗██╗   ██╗███████╗"
"╚══██╔══╝██╔════╝██╔════╝██╔══██╗██║   ██║██║   ██║██╔════╝"
"   ██║   █████╗  █████╗  ███████║██║   ██║██║   ██║█████╗  "
"   ██║   ██╔══╝  ██╔══╝  ██╔══██║╚██╗ ██╔╝╚██╗ ██╔╝██╔══╝  "
"   ██║   ███████╗███████╗██║  ██║ ╚████╔╝  ╚████╔╝ ███████╗"
"   ╚═╝   ╚══════╝╚══════╝╚═╝  ╚═╝  ╚═══╝    ╚═══╝  ╚══════╝"
)

for line in "${lines[@]}"; do
    for ((i=0; i<${#line}; i++)); do
        printf "${CYAN}%s${RESET}" "${line:$i:1}"
        sleep 0.002
    done
    echo
done
}

# -------------------------------
# Typing Effect Function
# -------------------------------
type_text() {
    text="$1"
    color="$2"
    for ((i=0; i<${#text}; i++)); do
        printf "${color}%s${RESET}" "${text:$i:1}"
        sleep 0.03
    done
    echo
}

# -------------------------------
# Startup Sounds
# -------------------------------
startup_sound() {
    # Multiple beeps
    printf "\a"; sleep 0.1
    printf "\a"; sleep 0.1
    printf "\a"; sleep 0.1
}

# -------------------------------
# Personal Information
# -------------------------------
NAME="Tsehaynesh Biruh"
AGE="21"
DEPARTMENT="Software Engineering"
UNIVERSITY="Jimma University"
COUNTRY="Ethiopia"

SKILLS="Full-Stack Development, DevOps, Blockchain (Cardano), MERN, React, Node.js, Docker, Kubernetes"
HOBBIES="Cooking, building income-generating projects"
PROJECTS="AfriLand DApp, Personal Portfolio Website"
GITHUB="https://github.com/tsi1221"

CAREER_GOAL="To become a company owner and a leading female DevOps expert."
QUOTE="God is Always Good for everyone."
FUTURE_PLAN="Advance deeply in DevOps and Cardano development to match my long-term career vision."

# -------------------------------
# Show Info Function
# -------------------------------
show_info() {
    type_text "------ About Me ------" "$YELLOW"
    echo -e "${YELLOW}Name:${RESET} $NAME"
    echo -e "${YELLOW}Age:${RESET} $AGE"
    echo -e "${YELLOW}Department:${RESET} $DEPARTMENT"
    echo -e "${YELLOW}University:${RESET} $UNIVERSITY"
    echo -e "${YELLOW}Country:${RESET} $COUNTRY"
    echo
    echo -e "${GREEN}Skills:${RESET} $SKILLS"
    echo -e "${GREEN}Hobbies:${RESET} $HOBBIES"
    echo -e "${GREEN}Projects:${RESET} $PROJECTS"
    echo -e "${GREEN}GitHub:${RESET} $GITHUB"
    echo
    echo -e "${MAGENTA}Career Goal:${RESET} $CAREER_GOAL"
    echo -e "${MAGENTA}Future Plan:${RESET} $FUTURE_PLAN"
    echo -e "${BLUE}Quote:${RESET} \"$QUOTE\""
    type_text "-----------------------" "$YELLOW"
}

# -------------------------------
# Interactive CLI Mode
# -------------------------------
interactive_mode() {
    type_text "Welcome to the About Me Interactive CLI!" "$CYAN"
    echo -e "${CYAN}Type a number to learn more:${RESET}"
    echo "1 - Basic Information"
    echo "2 - Skills"
    echo "3 - Hobbies"
    echo "4 - Projects"
    echo "5 - Career Goal"
    echo "6 - Future Plan"
    echo "7 - Motivational Quote"
    echo "8 - GitHub"
    echo "9 - Show All"
    echo "0 - Exit"
    echo

    while true; do
        read -p "Your choice: " choice
        echo
        case $choice in
            1) echo -e "${YELLOW}Name:${RESET} $NAME
${YELLOW}Age:${RESET} $AGE
${YELLOW}Department:${RESET} $DEPARTMENT
${YELLOW}University:${RESET} $UNIVERSITY
${YELLOW}Country:${RESET} $COUNTRY";;
            2) echo -e "${GREEN}Skills:${RESET} $SKILLS";;
            3) echo -e "${GREEN}Hobbies:${RESET} $HOBBIES";;
            4) echo -e "${GREEN}Projects:${RESET} $PROJECTS";;
            5) echo -e "${MAGENTA}Career Goal:${RESET} $CAREER_GOAL";;
            6) echo -e "${MAGENTA}Future Plan:${RESET} $FUTURE_PLAN";;
            7) echo -e "${BLUE}Quote:${RESET} \"$QUOTE\"";;
            8) echo -e "${CYAN}GitHub:${RESET} $GITHUB";;
            9) show_info;;
            0) type_text "Goodbye!" "$CYAN"; exit;;
            *) echo -e "${RED}Invalid option, try again.${RESET}";;
        esac
        echo
    done
}

# -------------------------------
# Main
# -------------------------------
startup_sound
banner
if [ "$1" == "--interactive" ]; then
    interactive_mode
else
    show_info
fi
