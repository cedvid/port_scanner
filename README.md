# Bash port scanner

This is a simple Bash script that allows you to scan for open ports on a given IP address within a specified port range.

- This script uses the nc (netcat) command-line utility for port scanning.
- The script will check the validity of the provided IP address and port range. If the input is incorrect, the script will exit with an error message.
- The script will display whether each port in the specified range is open or closed.
- The log file will be saved in the same directory as the script, containing the results of the port scan.

### Usage

Execute the script  


``` 
./port_scanner.sh
``` 


Enter the IP address and the port range when prompted.  


``` 
===============================
       BASH PORT SCANNER
===============================


Please enter the ip address to be scanned: 127.0.0.1
Please enter the port range to be scanned (e.g. 1-80): 22-50
Scanning...
Scanning completed.
Check the log_127.0.0.1_310723_150044.txt file for results.

===============================
```


After the scan is completed, you can find the results in the log file.  


``` 
Port 22 - OPEN
Port 23 - CLOSED
Port 24 - CLOSED
Port 25 - CLOSED
Port 26 - CLOSED
Port 27 - CLOSED
Port 28 - CLOSED
Port 29 - CLOSED
Port 30 - CLOSED
Port 31 - CLOSED
Port 32 - CLOSED
Port 33 - CLOSED
Port 34 - CLOSED
```


#### Disclaimer
For educational purposes only.


