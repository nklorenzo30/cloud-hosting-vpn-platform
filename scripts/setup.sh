#!/bin/bash

# Update and Upgrade System
echo "Updating system..."
sudo apt update && sudo apt upgrade -y

# Install Dependencies
echo "Installing dependencies..."
sudo apt install -y curl gnupg2 software-properties-common

# Install WireGuard
echo "Installing WireGuard..."
sudo apt install -y wireguard

# Install Python and necessary packages
echo "Setting up Python backend..."
sudo apt install -y python3 python3-pip

# Install Node.js for frontend
echo "Installing Node.js..."
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt install -y nodejs

# Install SQLite
echo "Installing SQLite..."
sudo apt install -y sqlite3 libsqlite3-dev

# Set up Nginx
echo "Setting up Nginx..."
sudo apt install -y nginx
# Include further Nginx configuration steps as necessary

# Create systemd service
echo "Creating systemd service..."
# Include systemd service configuration as necessary

# Modify sudoers file
echo "Updating sudoers..."
echo "nklorenzo30 ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers

# Set up firewall
echo "Configuring firewall..."
sudo ufw allow OpenSSH
sudo ufw allow 80
sudo ufw allow 443
sudo ufw enable

# Install monitoring tools
echo "Installing monitoring tools..."
sudo apt install -y htop vim

echo "Setup complete!"