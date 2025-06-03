# Basic Firewall Setup Script (UFW)

A Bash script to secure a Linux server using UFW (Uncomplicated Firewall).

## What It Does

- Sets default firewall policies
- Allows SSH (port 22), HTTP (80), and HTTPS (443)
- Optionally add custom ports
- Enables the firewall and prints the status

## Usage

1. Make the script executable:

```bash
chmod +x setup_firewall.sh
sudo ./setup_firewall.sh
```

## Optional
```bash
sudo ufw allow 8080/tcp comment 'My App'
```
