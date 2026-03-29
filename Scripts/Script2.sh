#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Your Name | Reg No: Your Reg Number
# Course: Open Source Software
# Description: Checks if Git is installed, displays its
#              details, and prints a philosophy note

# --- Set the package name to inspect ---
PACKAGE="git"

echo "=============================================="
echo "        FOSS Package Inspector"
echo "=============================================="
echo ""

# --- if-then-else to check if package is installed ---
# dpkg -s checks the package status
# &>/dev/null sends any error messages to nowhere
if dpkg -s $PACKAGE &>/dev/null; then

    # Package is installed so show its details
    echo "Package '$PACKAGE' is INSTALLED on this system."
    echo ""
    echo "--- Package Details ---"

    # dpkg -s gives full info
    # grep -E filters only Version, Status and Homepage lines
    dpkg -s $PACKAGE | grep -E 'Version|Status|Homepage'

else
    # Package is not installed
    echo "Package '$PACKAGE' is NOT installed."
    echo "To install it run: sudo apt install $PACKAGE"
fi

echo ""
echo "--- Open Source Philosophy Note ---"

# --- case statement matches package name to a note ---
# case checks the value of PACKAGE variable
case $PACKAGE in
    git)
        echo "Git: Born from frustration in 2005 when a proprietary"
        echo "tool failed the open source community. Git proved that"
        echo "when proprietary tools fail, open source builds better ones."
        ;;
    apache2)
        echo "Apache: The web server that helped build the open internet."
        ;;
    python3)
        echo "Python: A language shaped entirely by its community."
        ;;
    vlc)
        echo "VLC: Built by students in Paris, plays anything for free."
        ;;
    firefox)
        echo "Firefox: A nonprofit fighting to keep the web open."
        ;;
    *)
        # Default case if no match is found
        echo "$PACKAGE: An open source tool, free to use and share."
        ;;
esac

echo ""
echo "=============================================="