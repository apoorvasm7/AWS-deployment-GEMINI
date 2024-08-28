#!/bin/bash

# Install Python 3 and pip3 if not installed
sudo yum install -y python3

# Ensure pip3 is available
python3 -m ensurepip --upgrade

# Optionally, upgrade pip3 to the latest version
sudo pip3 install --upgrade pip

# Navigate to the project directory
mkdir -p /home/ec2-user/Gemini-AI
cd /home/ec2-user/Gemini-AI || exit 1

# Install Python dependencies
pip install -r requirements.txt || exit 1


