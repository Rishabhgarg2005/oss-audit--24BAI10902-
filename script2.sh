#!/bin/bash
PACKAGE=${1:-python3}

echo "Checking package: $PACKAGE..."

if dpkg -s "$PACKAGE" &> /dev/null; then
    echo "[SUCCESS] $PACKAGE is installed."
    dpkg -s "$PACKAGE" | grep -E '^Version|^Description' | head -n 2
else
    echo "[FAIL] $PACKAGE is NOT installed."
fi

echo "--------------------------------------"
case $PACKAGE in
    apache2|httpd) 
        echo "Apache: The web server that built the open internet." ;;
    mysql-server|mysql) 
        echo "MySQL: Open source at the heart of millions of apps." ;;
    python3|python) 
        echo "Python: A language shaped entirely by community and readability." ;;
    git) 
        echo "Git: The decentralized tool Linus built for total code freedom." ;;
    *) 
        echo "$PACKAGE: Another great brick in the open-source foundation." ;;
esac