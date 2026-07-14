# Day 11: Network Monitoring with Zeek IDS on XUbuntu

## Objective
Install anad configuration of zeek IDS on XUbuntu 24.04 to monitor network traffic and identify websites by capturing

## Lab Environment
- **OS**: XUbuntu 24.04 LTS on VMware Workstation
- **Tool**:Zeek v8.2.1
- **Network Interface**: ens33
- **Reason for Switch**: Lightweight OS for better IDS/SOC tool performance

## Step 1: Install Zeek
```bash
sudo apt update
sudo apt install zeek -y

## Step 2: Configure Zeek
sudo nano /opt/zeek/etc/node.cfg
[zeek]
type=standalone
host=localhost
interface=ens33

## Step 3: Deploy Zeek
sudo zeekctl deploy
sudo zeekctl status

##Step 4: Generate Traffic & Check Logs
sudo cat /opt/zeek/logs/current/dns.log
sudo cat /opt/zeek/logs/current/ssl.log
Note: Zeekctl showed crashed status.Used manual mode for log capture
sudo /opt/zeek/bin/zeek -i ens33

Step 5: Generate Traffic and Analyze logs
visited:cnn.com,cntraveller.in,theconversation.com
sudo cat /opt/zeek/logs/current/dns.log

##Step 6: Extract Top Domains
sudo cat /opt/zeek/logs/current/dns.log|awk '{print $10}' |sort|uniq -c|sort -nr|head -10

Key Outcome
 - Successfully deployed Zeek IDS on XUbuntu
 - Successfully captured DNS queries using Zeek
 - Captured DNS queries and SSL traffic
 - Identified visited domains from logs:cnn.com,cntraveller.in,theconversation.com
 - Demonstrated network traffic monitoring capability for SOC

Screenshots
1. Zeek_status.png
2. Zeekctl status output

Troubleshooting
Issue: Zeekctl: Command not found
Solution: Add Zeek to path
Issue: Status: crashed
Solution: Used manual mode sudo /opt/zeek/bin/zeek -i ens33

3. ssl_log.png
}
