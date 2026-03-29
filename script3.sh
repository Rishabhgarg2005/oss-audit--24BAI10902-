#!/bin/bash
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "======================================"
echo "      Directory Audit Report          "
echo "======================================"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, "Owner:", $3, "Group:", $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Perms: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system."
    fi
done

echo "--------------------------------------"
PYTHON_DIR="/usr/lib/python3"
if [ -d "$PYTHON_DIR" ]; then
    PY_PERMS=$(ls -ld "$PYTHON_DIR" | awk '{print $1}')
    echo "Python Library Dir ($PYTHON_DIR) exists with perms: $PY_PERMS"
fi