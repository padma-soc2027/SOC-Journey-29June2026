# Day 5: Nmap NSE Vulnerability Scanning - L2 SOC Automation

## Date
2026-07-01

## Objective
Automate vulnerability detection using Nmap Scripting Engine. Upgrade from manual research to enterprise SOC workflow.

## Target Details
**IP**: 192.168.157.2 - VMware NAT Gateway  
**Service**: dnsmasq 2.76 on 53/udp

## Commands Executed
```bash
sudo nmap -sU -sV -p 53 192.168.157.2
sudo nmap -sU -sV --script vuln -p 53 192.168.157.2
