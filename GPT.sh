#!/bin/bash

clesr

red="\033[1;31m"
green="\033[1;32m"
cyan="\033[1;36m"
nc="\033[0m"

function banner() {
    clear
    echo -e "${green}"
    echo "  ================================"
    echo "  = HACKED LORDHOZOO AI ILEGAL = "
    echo "  ================================"
    echo -e "${nc}"
    echo "-------------------------------------"
    echo -e "       ${red}WormGPT - AI Assistant${nc}"
    echo "-------------------------------------"
    echo
}

function clear_screen() {
    clear
}

function main() {
    local key="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"
    local model="gpt-3.5-turbo-16k-0613"
    
    while true; do
        echo -ne "${red}YOU \$_ ${green}"
        read -r user_input
        
        case "${user_input,,}" in
            "exit")
                echo "Exiting WormGPT. Goodbye!"
                break
                ;;
            "clear")
                clear_screen
                banner
                ;;
            *)
                # In a real implementation, you would call an API here
                echo -e "${red}WormGPT : ${green}This is a simulated response. In a real implementation, this would call the WormGPT API.${nc}\n"
                ;;
        esac
    done
}

# Check if running on Windows (Git Bash, etc.)
if [[ "$OSTYPE" == "msys" ]]; then
    # Windows might need different handling for clear
    alias clear='cls'
fi

# Check for figlet (for a better banner)
if ! command -v figlet &> /dev/null; then
    echo "figlet could not be found, using simple banner"
else
    function banner() {
        clear
        echo -e "${green}"
        figlet -f slant "WormGPT"
        echo -e "${nc}"
        echo "-------------------------------------"
        echo -e "       ${red}WormGPT - AI Assistant${nc}"
        echo "-------------------------------------"
        echo
    }
fi

# Start the program
banner
main
