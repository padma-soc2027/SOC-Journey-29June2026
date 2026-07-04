# Day 8: Wireshark Basic Filters

## Goal
Learn ip.src, ip.dst, and tcp.flags filters in Wireshark

## Commands & Filters Used
1. `ip.src == 192.168.157.134` - Show only my VM traffic
2. `ip.dst == 8.8.8.8` - Show traffic to Google DNS
3. `tcp.flags.syn==1 and tcp.flags.ack==0` - Show SYN packets only

## Observation
- Normal browsing = 3 way handshake SYN/SYN-ACK/ACK
- Port Scan = Only SYN packets, no reply

## Screenshot
![Day8 Filter](screenshots/Day8-filter.png)

## Key Learning
How to differentiate Normal vs Malicious traffic using filters
