#!/bin/bash
echo "Answer three questions to generate your manifesto."
echo "--------------------------------------------------"

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "--- My Open Source Manifesto ---" > "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I believe that software should empower, not restrict. Every day, tools like $TOOL demonstrate the power of collaborative engineering." >> "$OUTPUT"
echo "To me, digital freedom ultimately means $FREEDOM." >> "$OUTPUT"
echo "Standing on the shoulders of giants, my goal is to eventually build and open-source a $BUILD, contributing back to the community that taught me." >> "$OUTPUT"

echo "--------------------------------------------------"
echo "Manifesto successfully saved to $OUTPUT"
echo "Here is what it says:"
echo ""
cat "$OUTPUT"