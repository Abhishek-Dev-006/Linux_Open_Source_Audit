#!/bin/bash
# Script 1: System Identity Report
# Author: Your Name | Reg No: Your Reg Number
# Course: Open Source Software
# Description: Displays system identity information
#              as a welcome screen

# --- Variables ---
# Storing student details in variables
STUDENT_NAME="Your Name Here"
REG_NUMBER="Your Reg Number Here"
SOFTWARE_CHOICE="Git"
LICENSE="GPL v2 (GNU General Public License version 2)"

# --- Gathering system information using command substitution ---
# uname -r gives the kernel version
KERNEL=$(uname -r)

# lsb_release -d gives the full distro name, cut removes the label
DISTRO=$(lsb_release -d | cut -f2)

# whoami gives the currently logged in username
USER_NAME=$(whoami)

# HOME variable gives the home directory path
HOME_DIR=$HOME

# uptime -p gives human readable uptime like "up 2 hours"
UPTIME=$(uptime -p)

# date command gives current date and time in readable format
CURRENT_DATE=$(date '+%A, %d %B %Y %H:%M:%S')

# --- Display formatted output using echo ---
echo "=============================================="
echo "     Open Source Audit — System Identity"
echo "=============================================="
echo ""
echo "  Student    : $STUDENT_NAME"
echo "  Reg No     : $REG_NUMBER"
echo "  Software   : $SOFTWARE_CHOICE"
echo "----------------------------------------------"
echo "  OS         : $DISTRO"
echo "  Kernel     : $KERNEL"
echo "  User       : $USER_NAME"
echo "  Home Dir   : $HOME_DIR"
echo "  Uptime     : $UPTIME"
echo "  Date/Time  : $CURRENT_DATE"
echo "----------------------------------------------"
echo "  OS License : $LICENSE"
echo ""
echo "  Note: Linux is distributed under GPL v2"
echo "  the same license as Git — ensuring both"
echo "  remain free and open forever."
echo "=============================================="