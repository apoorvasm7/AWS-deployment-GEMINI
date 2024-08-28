#!/bin/bash

# Install Python 3 and pip3 if not installed
sudo yum install -y python3

# Ensure pip3 is available and upgrade it
python3 -m ensurepip --upgrade
sudo python3 -m pip install --upgrade pip

# Navigate to the project directory, ensuring it exists
mkdir -p /home/ec2-user/Gemini-AI
cd /home/ec2-user/Gemini-AI || exit 1

# Copy the requirements.txt from the deployment package to the project directory
cp /opt/codedeploy-agent/deployment-root/deployment-archive/requirements.txt .

# Install Python dependencies using pip3
python3 -m pip install -r requirements.txt || exit 1
