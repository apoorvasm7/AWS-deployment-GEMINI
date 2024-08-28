#!/bin/bash
# Install Python and pip if not installed
sudo yum install -y python3
python3 -m ensurepip --upgrade

# Navigate to the project directory
cd /home/ec2-user/Gemini-AI || exit

# Install dependencies
pip3 install -r requirements.txt
