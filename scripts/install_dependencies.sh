#!/bin/bash
cd /home/ec2-user/AWS-deployment-GEMINI
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
