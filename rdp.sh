#!/bin/bash

echo "Setting up Windows RDP via Ngrok..."

# Step 1: Auth token
NGROK_AUTH_TOKEN="2vWHYbNvizoSuXLTW7CXA8buou7_ntS43bXFZHPCh8a6S1qS"
./ngrok authtoken $NGROK_AUTH_TOKEN

# Step 2: Start tunnel on port 3389 (RDP)
./ngrok tcp 3389 > ngrok_log.txt &

sleep 10

# Step 3: Show forwarding address
echo "Your RDP is now accessible at:"
cat ngrok_log.txt | grep "tcp://" || echo "Check ngrok_log.txt for tunnel info"
