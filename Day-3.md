#Day 3: Traceroute & ICMP

### Commands Learned
cat>Day-3.md<<'EOF'
#Day 3: Traceroute & ICMP
### Commands Learned
1.'traceroute google.com'- Default UDP trace fails due to ISP block
2.'traceroute -I google.com'-ICMP trace works,reached Google in 15 hops
cat>Day-3.md<<'EOF'
#Day 3: Traceroute & ICMP
### Commands Learned
1.'traceroute google.com'- Default UDP trace fails due to ISP block
2.'traceroute -I google.com'-ICMP trace works,reached Google in 15 hops


### Key Learning
-'* * * ' in traceroute means the router did not reply. Normal for security reasons.
-ICMP = Internet Control Message Protocol. Used for ping and diagnostics.
-'I' flag forces traceroute to use ICMP instead of UDP.

### Real SOC Use Case
To Troubleshoot "Internet slow" complaints:Use 'traceroute' to identify which hop has has high latency

### Bonus: IP Address
-Private IP-'ip a' shows 192.168.x.x range for internal use only.
-Public IP:'curl -L ifconfig.me' shows the IP visible to internet
