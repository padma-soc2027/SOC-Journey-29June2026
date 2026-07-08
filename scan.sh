#!/bin/bash
echo "==============================================="
echo "       MINI SOC LAB - Day 1 to Day 8    "
echo "==============================================="
read -p "Enter Target IP:" target
echo "[+]Step 1: NMap SYN Scan - Day 6"
nmap -sS -sV -O $target -oN nmap_result.txt

echo "[+]Step 2: NMap Vuln Scan - Day 5"
nmap --script vuln $target -oN vuln_result.txt

echo "[+] Step 3: Wireshark Capture 30s -Day 7"
echo "Run this in another terminal: tshark -i eth0 -w capture.pcap host $target"
sleep 3

echo "[+]Done!Files created."
echo " nmap_result.txt | vuln_result.txt | capture.pcap"
