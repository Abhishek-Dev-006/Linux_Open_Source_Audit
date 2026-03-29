#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Your Name | Reg No: Your Reg Number
# Course: Open Source Software
# Description: Asks the user three questions and generates
#              a personalised open source philosophy statement
#              saved to a text file

# --- alias concept demonstrated in a comment ---
# In a real shell session you could use:
# alias manifesto='./script5_manifesto.sh'
# to run this script by just typing: manifesto

echo "=============================================="
echo "     Open Source Manifesto Generator"
echo "=============================================="
echo ""
echo "Answer three questions to generate your manifesto."
echo ""

# --- read command takes input from the user ---
# -p flag shows a prompt message before waiting for input
read -p "1. Name one open source tool you use every day: " TOOL

read -p "2. In one word what does freedom mean to you: " FREEDOM

read -p "3. Name one thing you would build and share freely: " BUILD

# --- Get current date for the manifesto ---
DATE=$(date '+%d %B %Y')

# --- Create output filename using whoami ---
OUTPUT="manifesto_$(whoami).txt"

# --- String concatenation to build the manifesto paragraph ---
# echo with >> appends text to the file
# echo with > would overwrite the file

# First clear the file if it already exists
echo "" > "$OUTPUT"

# Now write the manifesto to the file line by line
echo "=============================================="  >> "$OUTPUT"
echo "         My Open Source Manifesto"              >> "$OUTPUT"
echo "         Generated on: $DATE"                   >> "$OUTPUT"
echo "=============================================="  >> "$OUTPUT"
echo ""                                               >> "$OUTPUT"
echo "Every day I use $TOOL — a tool that exists"     >> "$OUTPUT"
echo "because someone chose to build it openly and"   >> "$OUTPUT"
echo "share it freely with the world. To me freedom"  >> "$OUTPUT"
echo "means $FREEDOM. That is what open source gives" >> "$OUTPUT"
echo "every developer — not just the right to use"    >> "$OUTPUT"
echo "software, but the right to understand it,"      >> "$OUTPUT"
echo "improve it, and pass it forward."               >> "$OUTPUT"
echo ""                                               >> "$OUTPUT"
echo "One day I will build $BUILD and release it"     >> "$OUTPUT"
echo "as open source — because the tools I depend"    >> "$OUTPUT"
echo "on today exist because someone made that same"  >> "$OUTPUT"
echo "choice before me."                              >> "$OUTPUT"
echo ""                                               >> "$OUTPUT"
echo "Signed: $(whoami) | Date: $DATE"                >> "$OUTPUT"
echo "=============================================="  >> "$OUTPUT"

echo ""
echo "--- Your Manifesto ---"
echo ""

# --- cat displays the contents of the file ---
cat "$OUTPUT"

echo ""
echo "Manifesto saved to $OUTPUT"
echo "=============================================="