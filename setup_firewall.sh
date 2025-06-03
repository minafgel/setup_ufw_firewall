#!/bin/bash

# ------------------------------------------
# UFW Firewall Configuration Script
# ------------------------------------------
# This script configures basic firewall rules using UFW.
# It is intended to protect a public-facing Linux server.
# ------------------------------------------

echo "Checking if ufw is installed."
if ! command -v ufw &> /dev/null; then
    echo "UFW is not installed. Installing it."
    sudo apt update && sudo apt install -y ufw
fi

echo "Resetting current UFW rules."
sudo ufw --force reset

echo "Setting default policies."
sudo ufw default deny incoming
sudo ufw default allow outgoing

echo "Allowing essential services."
# Allow SSH
sudo ufw allow 22/tcp comment 'SSH'
# Allow HTTP
sudo ufw allow 80/tcp comment 'HTTP'
# Allow HTTPS
sudo ufw allow 443/tcp comment 'HTTPS'

echo "📡 (Optional) Allow access to custom port/service"
# sudo ufw allow 8080/tcp comment 'Custom app'

echo "Enabling UFW."
sudo ufw --force enable

echo "Firewall Status:"
sudo ufw status verbose
