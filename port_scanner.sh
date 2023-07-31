#!/bin/bash
echo -e "\n"
echo "==============================="
echo "       BASH PORT SCANNER"
echo "==============================="
echo -e "\n"

read -p "Please enter the ip address to be scanned: " IP_ADDRESS
if ! [[ $IP_ADDRESS =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
    echo "Invalid IP address, please try again."
    exit 1
fi

read -p "Please enter the port range to be scanned (e.g. 1-80): " PORT_RANGE
START_PORT=$(echo "$PORT_RANGE" | cut -d'-' -f1)
END_PORT=$(echo "$PORT_RANGE" | cut -d'-' -f2)
if ! [[ $START_PORT =~ ^[0-9]+$ ]] || ! [[ $END_PORT =~ ^[0-9]+$ ]] || [ "$START_PORT" -gt "$END_PORT" ]; then
    echo "Invalid port range, please try again."
    exit 1
fi

TIMESTAMP=$(date +"%d%m%y_%H%M%S")

echo "Scanning..."

for ((port=$START_PORT; port<=$END_PORT; port++)); do
    nc -vz $IP_ADDRESS $port > /dev/null 2>&1 && echo "Port $port - OPEN" || echo "Port $port - CLOSED"
done > log_${IP_ADDRESS}_${TIMESTAMP}.txt

echo -e "Scanning completed.\nCheck the log_${IP_ADDRESS}_${TIMESTAMP}.txt file for results.\n"
echo "==============================="
echo -e "\n"
