#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

clear

echo -e "\e[36m==========================================================\e[0m"
echo -e "\e[1m\e[32m🧑‍💻 Author :\e[0m Harsh Kumar Singh"
echo -e "\e[1m\e[32m🛠️  Role   :\e[0m DevOps Engineer/Devops Student^^X6x"
echo -e "\e[1m\e[32m🗓️  Purpose:\e[0m Automate installation of AWS CLI v2 on Ubuntu"
echo -e "\e[36m==========================================================\e[0m"
echo ""

# Detect architecture
ARCH=$(uname -m)

if [[ "$ARCH" == "x86_64" ]]; then
    AWS_URL="https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip"
elif [[ "$ARCH" == "aarch64" ]]; then
    AWS_URL="https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip"
else
    echo "Unsupported architecture: $ARCH"
    exit 1
fi

echo "Detected architecture: $ARCH"
echo "Downloading AWS CLI..."

sudo apt update -y
sudo apt install curl unzip -y

curl -s "$AWS_URL" -o "awscliv2.zip"
unzip -o awscliv2.zip

echo "Installing AWS CLI..."
sudo ./aws/install --update

echo ""
echo -e "\e[32mAWS CLI installation completed successfully!\e[0m"

echo -e "\e[36m==========================================================\e[0m"
echo -e "\e[1m\e[32m🧑‍💻 Author :\e[0m Harsh Kumar Singh"
echo -e "\e[1m\e[32m🛠️  Role   :\e[0m DevOps Engineer/Devops Student^^X6x"
echo -e "\e[1m\e[32m🗓️  Purpose:\e[0m Automate installation of AWS CLI v2 on Ubuntu"
echo -e "\e[36m==========================================================\e[0m"
echo ""
aws --version


