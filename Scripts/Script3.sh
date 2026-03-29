#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Your Name | Reg No: Your Reg Number
# Course: Open Source Software
# Description: Loops through important system directories
#              and reports their size and permissions

# --- Array of important system directories to check ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=============================================="
echo "        Disk and Permission Auditor"
echo "=============================================="
echo ""
echo "Directory Audit Report"
echo "----------------------"

# --- for loop goes through each directory in the array ---
for DIR in "${DIRS[@]}"; do

    # Check if the directory actually exists using -d flag
    if [ -d "$DIR" ]; then

        # ls -ld shows directory permissions
        # awk extracts the permissions, owner and group fields
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')

        # du -sh shows human readable size
        # cut -f1 takes only the size part
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        # Print the results for this directory
        echo "Directory : $DIR"
        echo "Permissions and Owner : $PERMS"
        echo "Size : $SIZE"
        echo "----------------------"

    else
        # Directory does not exist on this system
        echo "$DIR does not exist on this system"
        echo "----------------------"
    fi

done

# --- Check if Git config directory exists ---
echo ""
echo "--- Git Configuration Check ---"

# Git stores user config in home directory as .gitconfig
GIT_CONFIG="$HOME/.gitconfig"

# Check if the git config file exists
if [ -f "$GIT_CONFIG" ]; then
    echo "Git config file found at: $GIT_CONFIG"

    # Show its permissions using ls -la
    ls -la "$GIT_CONFIG"
else
    echo "No Git config file found at $GIT_CONFIG"
    echo "Run git config --global user.name to create it"
fi

echo ""
echo "=============================================="