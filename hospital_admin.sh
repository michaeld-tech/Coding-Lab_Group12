#!/usr/bin/bash

initialize_system() {
    if [ ! -d "active_logs" ]; then
        echo "Creating active_logs directory..."
        mkdir -p active_logs
    fi

    if [ ! -d "archived_logs" ]; then
        echo "Creating archived_logs directory..."
        mkdir -p archived_logs
    fi

    if [ ! -d "reports" ]; then
        echo "Creating reports directory..."
        mkdir -p reports
    fi
}

secure_data() {
    chmod 700 active_logs
    ls -ld active_logs
}

initialize_system
secure_data
echo "System Environment Secured - $(date)"
