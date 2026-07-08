# Incident Report - Day 10

## Incident Summary
Brute Force Attack detected on 29-06-2026

## Attacker Details
IP Address: 192.168.1.50
Attack Type: Brute Force + Port Scan + SQL Injection

## Actions Taken
1. Analyzed logs using grep and awk
2. Blocked attacker IP using UFW: sudo ufw deny from 192.168.1.50
3. Verified firewall status: sudo ufw status numbered

## Status
Contained - Attacker IP Blocked
