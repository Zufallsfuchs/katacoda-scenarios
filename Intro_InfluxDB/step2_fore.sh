#!/bin/bash

echo "Waiting for docker to pull InfluxDB..."
while [ ! -f /opt/.backgroundfinished ]; do
    sleep 2
done
echo "Ready to go!"