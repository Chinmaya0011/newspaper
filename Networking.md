# 🛡️ 15-Day Networking Roadmap for Cybersecurity (Beginner)

This **15-day roadmap focuses only on networking concepts required for cybersecurity roles** such as **SOC Analyst, Ethical Hacker, Network Security Engineer**.

⏰ **Daily Time Commitment:** 1–2 hours  
🎯 **Goal:** Understand how networks work, how attacks happen, and how defenders detect and prevent them.

---

## 🗓️ Day 1 – Networking Basics

### What is a Network?
A network is a group of devices connected to share data and resources (files, printers, internet).

### Types of Networks
- **LAN (Local Area Network):** Small area (home, office)
- **WAN (Wide Area Network):** Large area (internet)
- **MAN (Metropolitan Area Network):** City-level networks

### Network Models
- **Client–Server:** Central server controls resources (used in enterprises)
- **Peer-to-Peer:** Devices communicate directly (small networks)

### Key Terms
- **Bandwidth:** Maximum data capacity
- **Latency:** Delay in transmission
- **Throughput:** Actual data transferred

🔐 *Security Relevance:* Attackers exploit low bandwidth monitoring and high latency links.

---

## 🗓️ Day 2 – IP & MAC Addressing

### MAC Address
- Hardware address (Layer 2)
- Example: `00:1A:2B:3C:4D:5E`

### IPv4 Address
- Logical address (Layer 3)
- Format: `192.168.1.1`

### Public vs Private IP
- **Private:** Internal networks (192.168.x.x)
- **Public:** Internet-facing IPs

### Static vs Dynamic IP
- **Static:** Fixed (servers)
- **Dynamic:** Changes (home users)

### ISP Basics
ISP assigns public IP and routes internet traffic.

🛠 Practice:
```bash
ipconfig
```

---

## 🗓️ Day 3 – OSI & TCP/IP Models

### OSI Model (7 Layers)
1. Physical
2. Data Link
3. Network
4. Transport
5. Session
6. Presentation
7. Application

### TCP/IP Model
- Network Interface
- Internet
- Transport
- Application

### Mapping Attacks to Layers
- **ARP Spoofing → Layer 2**
- **IP Spoofing → Layer 3**
- **DDoS → Layer 4 / 7**

🔐 *SOC analysts use OSI mapping to identify attack location.*

---

## 🗓️ Day 4 – Subnetting Fundamentals

### Why Subnetting?
- Improves security
- Reduces broadcast traffic

### Key Concepts
- Subnet Mask (255.255.255.0)
- CIDR Notation (/24, /16)
- Network ID & Broadcast ID

### Example
`192.168.1.0/24` → 254 usable hosts

🔐 *Subnetting enables network segmentation to limit attacks.*

---

## 🗓️ Day 5 – TCP vs UDP

### TCP
- Reliable
- 3-Way Handshake (SYN → SYN-ACK → ACK)
- Used by HTTP, HTTPS, FTP

### UDP
- Fast
- No connection
- Used by DNS, VoIP

### Security View
- **SYN Flood → TCP abuse**
- **UDP Flood → DDoS attack**

---

## 🗓️ Day 6 – Core Protocols (Part 1)

### HTTP vs HTTPS
- HTTPS uses encryption (TLS)

### DNS
- Converts domain to IP
- Attack: DNS poisoning

### DHCP
- Automatically assigns IP

### ICMP
- Used for ping
- Attackers use it for reconnaissance

---

## 🗓️ Day 7 – Core Protocols (Part 2)

### ARP
- Maps IP to MAC
- Attack: ARP Spoofing

### FTP vs SFTP
- FTP is insecure
- SFTP uses SSH

### Email Protocols
- SMTP (send)
- POP3 / IMAP (receive)

### SSH
- Secure remote login

---

## 🗓️ Day 8 – Ports & Services

### What are Ports?
Logical endpoints for services.

### Common Ports
- 21 → FTP
- 22 → SSH
- 80 → HTTP
- 443 → HTTPS

🛠 Practice:
```bash
netstat
```

🔐 *Open ports = attack surface.*

---

## 🗓️ Day 9 – Networking Devices (Security View)

- **Router:** Directs traffic
- **Switch:** Connects devices
- **Firewall:** Filters traffic
- **IDS/IPS:** Detects/blocks attacks
- **Proxy:** Hides internal network
- **NAT:** Converts private IPs

---

## 🗓️ Day 10 – Firewalls & Filtering

### Firewall Types
- Stateless
- Stateful

### Rules
- Inbound vs Outbound

### Network Segmentation
Divides network into secure zones.

---

## 🗓️ Day 11 – Networking Commands

### Windows
```bash
ping
tracert
nslookup
arp -a
```

### Linux
```bash
ping
traceroute
nslookup
```

---

## 🗓️ Day 12 – Packet Analysis Basics

### What is a Packet?
Small unit of data sent over network.

### TCP Flags
- SYN, ACK, FIN

### Tool
- **Wireshark (basic filtering)**

---

## 🗓️ Day 13 – Network Attacks (Awareness)

- ARP Spoofing
- DNS Spoofing
- IP Spoofing
- Man-in-the-Middle
- Port Scanning

⚠️ Learn for defense only.

---

## 🗓️ Day 14 – Secure Networking

- HTTPS & TLS
- VPN (IPSec, SSL)
- DMZ
- Zero Trust Model
- Network Segmentation

---

## 🗓️ Day 15 – Revision & Practice

- Revise OSI & protocols
- Practice commands
- Analyze packets
- Identify attacks by layer

---

## 🎯 Outcome

After 15 days, you can:
- Understand network traffic
- Detect suspicious behavior
- Use basic tools
- Start SOC or Ethical Hacking labs

---

## 🚀 Next Steps

- TryHackMe (Networking + SOC rooms)
- CompTIA Security+
- Ethical Hacking or SOC path

