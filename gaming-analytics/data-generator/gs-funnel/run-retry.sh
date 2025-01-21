#!/bin/sh

while true; do
    python main.py gs-funnel
    echo "Command failed, retrying in 3 seconds..."
    sleep 3
done