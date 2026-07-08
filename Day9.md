# Mini SOC Lab - Day 9

## Task: Automated Scan + Traffic Capture

### Evidence 1: NMap SYN Scan
`nmap_result.txt` - All ports on 127.0.0.1 scanned

### Evidence 2: NMap Vuln Scan  
`vuln_result.txt` - Vulnerability scan completed

### Evidence 3: Wireshark Packet Capture
Traffic captured during NMap scan. Filter applied: `tcp.flags.syn==1`
![Wireshark SYN Packets](wiresharkynscreenshot.png)
