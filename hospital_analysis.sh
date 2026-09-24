#!/bin/bash

process_vitals() {
    echo "Processing critical vital alerts..."

    mkdir -p reports

    echo "Timestamp,Device_ID,Value,Sensor" > reports/critical_alerts.txt

     if [ -f active_logs/heart_rate.log ]; then
        grep "CRITICAL" active_logs/heart_rate.log | \
        awk -F',' '{print $1 "," $2 "," $3 ",Heart Rate"}' \
        >> reports/critical_alerts.txt
    fi
