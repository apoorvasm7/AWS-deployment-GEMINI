#!/bin/bash
cd /home/ec2-user/Gemini-AI
nohup python app.py > /dev/null 2>&1 &
