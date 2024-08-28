#!/bin/bash
# Switch to the project directory
cd /home/ec2-user/Gemini-AI || exit 1

# Install Python and pip if not installed
sudo yum install -y python3 || exit 1
python3 -m ensurepip --upgrade || exit 1

# Install dependencies
pip3 install -r requirements.txt || exit 1

