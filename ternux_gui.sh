#!/bin/bash

# ====== Colors ======
R='\033[1;31m'  # Red
G='\033[1;32m'  # Green
B='\033[1;34m'  # Blue
C='\033[1;36m'  # Cyan
RE='\033[0m'    # Reset

# ====== Custom ASCII Banner ======
clear
echo -e "${G}"
echo "▀▀█▀▀ ▒█▀▀▀ ▒█▀▀█ ▒█▀▄▀█ ▒█░▒█ ▀▄▒▄▀"
echo "░▒█░░ ▒█▀▀▀ ▒█▄▄▀ ▒█▒█▒█ ▒█░▒█ ░▒█░░"
echo "░▒█░░ ▒█▄▄▄ ▒█░▒█ ▒█░░▒█ ░▀▄▄▀ ▄▀▒▀▄"
echo
echo "▒█▀▀█ ▒█░▒█ ▀█▀"
echo "▒█░▄▄ ▒█░▒█ ▒█░"
echo "▒█▄▄█ ░▀▄▄▀ ▄█▄"
echo -e "${RE}"
echo
echo -e "${G}###########################################${RE}"
echo -e "${B}maker   : INOSUKE"
echo -e "version : 1.0${RE}"
echo -e "${G}###########################################${RE}"
echo
echo -e "1. GUI"
echo -e "2. EXIT"
echo

# ====== User Choice ======
read -p "Enter your choice (1 or 2): " ch

# ====== GUI Setup ======
if [[ $ch == 1 ]]; then
    clear
    echo -e "${R}Note    : this script made by sabamdarif ${RE}"
    echo -e "Github  : https://github.com/sabamdarif"
    echo
    echo -e "${B}Needed :${RE}"
    echo
    echo -e "${G}1. Termux API apk"
    echo -e "2. Termux x11 apk"
    echo -e "3. 3-4 GB Free storage"
    echo -e "4. 2 GB internet${RE}"
    echo
    read -p "$(echo -e ${C}Enter any key to continue or CTRL+C to stop${RE})"

    # Run the desktop setup script
    curl -Lf https://raw.githubusercontent.com/sabamdarif/termux-desktop/main/setup-termux-desktop -o setup-termux-desktop
    chmod +x setup-termux-desktop
    ./setup-termux-desktop

    # ====== Add Aliases in ~/.zshrc ======
    echo "alias vnc='vncserver :1 -SecurityTypes=None'" >> ~/.zshrc
    echo "alias vncstop='vncserver -kill :1'" >> ~/.zshrc

    # Reload zsh config
    source ~/.zshrc

    # Final Info
    clear
    echo -e "${G}Info :${RE}"
    echo
    echo -e "${C}vnc${RE}     - for start vnc server"
    echo -e "${C}vncstop${RE} - for stop vnc server"
    echo
fi

# ====== Exit Option ======
if [[ $ch == 2 ]]; then
    clear
    echo -e "${R}Goodbye! See you next time.${RE}"
    exit 0
fi
