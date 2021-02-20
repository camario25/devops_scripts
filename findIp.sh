#With temp file
nmap -F 192.168.1.0/24 > temp_nmap_scan.txt
cat temp_nmap_scan.txt | grep -i "Nmap scan report" > ipAddress.txt
rm -f temp_nmap_scan.txt
#Without temp file
nmap -F -oG - 192.168.1.0/24 | grep "Host:" | sort -u >> ipAddress.txt
