#!/bin/bash
# SSH Connection Manager
# Author: Lloydes Ukpabio
# Description: Advanced SSH connection and management script

echo "==========================================="
echo "           SSH CONNECTION MANAGER"
echo "              By: Lloydes Ukpabio"
echo "==========================================="

PS3='Please choose an option (1-6): '
options=(
    "Connect to remote server"
    "Test SSH connection" 
    "Generate SSH key"
    "Copy SSH key to server"
    "SSH with specific port"
    "Exit"
)

select opt in "${options[@]}"
do
    case $opt in
        "Connect to remote server")
            read -p "Enter username: " username
            read -p "Enter hostname/IP: " hostname
            echo "🔗 Connecting to $username@$hostname..."
            ssh $username@$hostname
            ;;
        "Test SSH connection")
            read -p "Enter hostname/IP to test: " hostname
            echo "🧪 Testing SSH connection to $hostname..."
            if ssh -o ConnectTimeout=5 -o BatchMode=yes $hostname exit 2>/dev/null; then
                echo "✅ SSH connection successful to $hostname"
            else
                echo "❌ SSH connection failed to $hostname"
            fi
            ;;
        "Generate SSH key")
            read -p "Enter email for SSH key: " email
            read -p "Enter key name (default: id_ed25519): " keyname
            keyname=${keyname:-id_ed25519}
            echo "🔑 Generating SSH key..."
            ssh-keygen -t ed25519 -C "$email" -f ~/.ssh/$keyname
            echo "✅ SSH key generated: ~/.ssh/$keyname"
            ;;
        "Copy SSH key to server")
            read -p "Enter username: " username
            read -p "Enter hostname/IP: " hostname
            read -p "Enter port (default: 22): " port
            port=${port:-22}
            echo "📤 Copying SSH key to $username@$hostname..."
            ssh-copy-id -p $port $username@$hostname
            ;;
        "SSH with specific port")
            read -p "Enter username: " username
            read -p "Enter hostname/IP: " hostname
            read -p "Enter port: " port
            echo "🔗 Connecting to $username@$hostname on port $port..."
            ssh -p $port $username@$hostname
            ;;
        "Exit")
            echo "👋 Goodbye!"
            break
            ;;
        *) 
            echo "❌ Invalid option $REPLY"
            ;;
    esac
done
