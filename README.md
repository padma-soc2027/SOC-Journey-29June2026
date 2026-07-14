# SOC Journey 2026 🛡️
**30 Days SOC Analyst Hands-on Lab | Parrot OS**

By: @padma-soc2027

This repository documents my daily journey learning SOC Analyst skills with real-world tools, attacks, and defenses.

---

## 📌 Lab Environment
**Phase 1:Days 1-10**
- **OS**: Parrot OS Security Edition on VMWare Workstation
- **Goal**: Build practical SOC skills - Detection, Analysis, Response
- **Focus**:WireShark,Nmap,Vulnerability Scanning
- **Tools Used**: Nmap, Fail2ban, nftables, Wireshark, Bash Scripting

**Phase 2:Day 11 onwards**
- **OS**:XUbuntu 24.04 LTS on VMWare Workstation
- **Focus**:Zeek,IDS,Network Monitoring,Log Analysis
- **Reason**: Lightweight OS for better IDS/SOC tool performance
---

## 📅 Daily Progress Log

| Day | Topic | Tools Used | Key Outcome |
| --- | --- | --- | --- |
| **Day 4** | NMap + CVE Analysis | `nmap`, `dnsmasq` | Found Critical RCE vulnerability in dnsmasq 2.76 |
| **Day 5** | NMap NSE Automation | `nmap --script` | Found CVE-2017-14491 - CVSS 9.8 Critical |
| **Day 6** | NMap -sV Service Scan | `nmap -sV` | Complete service version enumeration |
| **Day 9** | Automated SOC Lab | `bash`, `nmap` | Created `scan.sh` for auto scan + reporting |
| **Day 10** | IP Block + Incident Response | `fail2ban`, `nftables` | Blocked attacker IP. Wrote Incident Report |

---

## 🛠️ Key Artifacts

| File | Description |
| --- | --- |
| `scan.sh` | Automated bash script for Nmap + Vuln scan |
| `capture.pcap` | Wireshark packet capture for analysis |
| `nmap_result.txt` | Nmap scan output |
| `vuln_result.txt` | Vulnerability scan results |
| `Incident_Report_Day10.md` | Professional SOC Incident Report template |
| `report.md` | Daily lab summary |
---
## Tools Used
Parrot OS,XUbuntu,Wireshark,NMap,Zeek,VMware
## 🔥 Day 10 Highlight: Fail2ban + nftables Setup

**Problem**: SSH Brute Force Attacks 
**Solution**: Auto-ban IP after 3 failed attempts

**Config: `/etc/fail2ban/jail.local`**
```ini
[sshd]
enabled = true
maxretry = 3
bantime = 3600
backend = systemd
mode = aggressive

**Verification Commands:**
```bash
sudo fail2ban-client status sshd
sudo nft list table inet f2b-table
**RESULT: Banned IP list 127.0.0.1 ::1**

t

