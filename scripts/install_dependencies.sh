#!/bin/bash
cd /home/ec2-user/gemini-ai-flask-project
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
