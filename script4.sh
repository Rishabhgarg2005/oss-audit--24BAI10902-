#!/bin/bash
LOGFILE=${1:-"/var/log/syslog"} 
KEYWORD=${2:-"error"}
COUNT=0

if [ ! -r "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found or not readable (try using sudo)."
    exit 1
fi

while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' was found $COUNT times in $LOGFILE."

if [ $COUNT -gt 0 ]; then
    echo "--- Last 5 occurrences ---"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi