#!/bin/bash
STUDENT_NAME="rishabh garg"
SOFTWARE_CHOICE="Python"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
CURRENT_DATE=$(date '+%Y-%m-%d %H:%M:%S')
OS_LICENSE="GNU General Public License (GPL) and others"
DISTRO_NAME=$(cat /etc/os-release | grep "^PRETTY_NAME" | cut -d '"' -f 2)

echo "======================================"
echo "      The Open Source Audit           "
echo "======================================"
echo "Student: $STUDENT_NAME"
echo "Auditing: $SOFTWARE_CHOICE"
echo "--------------------------------------"
echo "OS Distribution : $DISTRO_NAME"
echo "Kernel Version  : $KERNEL"
echo "Logged-in User  : $USER_NAME"
echo "Home Directory  : $HOME"
echo "System Uptime   : $UPTIME"
echo "Current Date    : $CURRENT_DATE"
echo "OS License      : $OS_LICENSE"
echo "======================================"