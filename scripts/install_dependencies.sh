#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

# Install Python 3 and pip3 if not installed
echo "Installing Python 3..."
sudo yum install -y python3 python3-pip || { echo "Failed to install Python 3 or pip"; exit 1; }

# Ensure pip3 is available and upgrade it
echo "Ensuring pip3 is available..."
python3 -m ensurepip --upgrade || { echo "Failed to ensure pip3"; exit 1; }
sudo python3 -m pip install --upgrade pip || { echo "Failed to upgrade pip"; exit 1; }

# Navigate to the project directory, ensuring it exists
echo "Navigating to the project directory..."
mkdir -p /home/ec2-user/Gemini-AI
cd /home/ec2-user/Gemini-AI || { echo "Failed to change directory"; exit 1; }

# Copy the requirements.txt from the deployment package to the project directory
echo "Copying requirements.txt..."
cp /opt/codedeploy-agent/deployment-root/deployment-archive/requirements.txt . || { echo "Failed to copy requirements.txt"; exit 1; }

# Install Python dependencies using pip3
echo "Installing dependencies from requirements.txt..."
sudo python3 -m pip install -r requirements.txt || { echo "Failed to install dependencies"; exit 1; }

echo "Script executed successfully."
