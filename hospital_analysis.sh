#!/bin/bash

process_vitals() {
    echo "Processing critical vital alerts..."

    mkdir -p reports

    echo "Timestamp,Device_ID,Value,Sensor" > reports/critical_alerts.txt
