#!/bin/bash

# Colors
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
NC='\e[0m'              # No Color

# Function to display header
header() {
    clear
    echo -e "${Green}***************************************************${NC}"
    echo -e "${Green}*${NC}             Mullvad Browser Launcher            ${Green}*${NC}"
    echo -e "${Green}***************************************************${NC}"
    echo ""
}

# Function to display options
display_options() {
    echo -e "${Yellow}Please select an option:${NC}"
    echo "1. Launch Mullvad Browser"
    echo "2. Exit"
}

# Function to launch Mullvad Browser container
launch_browser() {
    echo -e "${Yellow}Launching Mullvad Browser...${NC}"
    docker run -d \
        --name=mullvad-browser \
        --security-opt seccomp=unconfined \
        -e PUID=1000 \
        -e PGID=1000 \
        -e TZ=Etc/UTC \
        -p 3000:3000 \
        -p 3001:3001 \
        -v /mullvad-browser:/config \
        --shm-size="7gb" \
        --restart unless-stopped \
        ghcr.io/linuxserver/mullvad-browser:latest

    echo -e "${Green}Mullvad Browser launched successfully!${NC}"
}

# Main function
main() {
    header
    display_options

    read -rp "Enter your choice: " choice

    case $choice in
    1)
        launch_browser
        ;;
    2)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo -e "${Yellow}Invalid option! Please select a valid option.${NC}"
        main
        ;;
    esac
}


main
