#!/bin/bash
echo "\n"
echo "==============================="
echo "Please enter the ip address to be scanned: "
read IP_ADDRESS
echo "Please enter the port number to be scanned: "
read PORT_NUMBER
echo "Scanning..."
nc -vz $IP_ADDRESS $PORT_NUMBER
echo "==============================="
echo "\n"
