#!/bin/bash
# Script 4: Log File Analyzer
# Author: Your Name | Reg No: Your Reg Number
# Course: Open Source Software
# Description: Reads a log file line by line, counts
#              how many lines contain a keyword
#              and prints a summary with matching lines

# --- Set the log file and keyword directly in the script ---
# Using testlog.txt which we created ourselves
LOGFILE="testlog.txt"

# Setting default keyword to error
KEYWORD="error"

# --- Counter variable starts at zero ---
COUNT=0

# --- Check if the file exists using -f flag ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    echo "Please create testlog.txt first"
    exit 1
fi

# --- Check if the file is empty using -s flag ---
if [ ! -s "$LOGFILE" ]; then
    echo "Warning: File $LOGFILE is empty. Nothing to analyze."
    exit 1
fi

echo "=============================================="
echo "           Log File Analyzer"
echo "=============================================="
echo "Log File : $LOGFILE"
echo "Keyword  : $KEYWORD"
echo "----------------------------------------------"

# --- while read loop goes through file line by line ---
while IFS= read -r LINE; do

    # if statement checks if this line contains the keyword
    # grep -iq makes it case insensitive and quiet
    if echo "$LINE" | grep -iq "$KEYWORD"; then

        # Increment counter by 1 each time keyword is found
        COUNT=$((COUNT + 1))

    fi

# Done keyword closes the while loop
done < "$LOGFILE"

# --- Print the total count ---
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo ""

# --- Show last 5 lines that contain the keyword ---
echo "--- Last 5 matching lines ---"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo ""
echo "=============================================="