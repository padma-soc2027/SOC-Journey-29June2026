# Day 3 - June 30, 2026

### Lab 3: Traceroute - Network Path Analysis
*Command 1:* traceroute google.com - Default UDP failed with * * *  
*Command 2:* sudo traceroute -I google.com - ICMP worked ✅

*Output Analysis:*
1. *Hop 1:* 192.168.157.2 - My VMware Virtual Router
2. *Hop 2-14:* * * * - ISP blocked UDP/ICMP packets for security
3. *Hop 15:* 192.178.174.101 - Google Server reached in 31ms

*SOC Finding:* ISPs block traceroute to prevent attackers from mapping internal networks. Using -I for ICMP sometimes bypasses this. Total hops to Google: 15.

*Key Learning:*
1. *traceroute -I* = Use ICMP instead of UDP
2. *** * *** = Router didn't respond - Normal for security
3. *SOC Use* = Find attack path during incident investigation

---
*Progress*: Day 3/270 Complete ✅
*Troubleshooting Win*: Fixed black screen + Fixed traceroute command 💪
