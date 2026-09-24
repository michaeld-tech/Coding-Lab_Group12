 security
#!/usr/bin/bash

initialize_system() {
    if [ ! -d "active_logs" ]; then
        echo "Creating active_logs directory..."
        mkdir -p active_logs

#!/bin/bash

initialize_system() {

    if [ ! -d "active_logs" ]; then
        echo "Creating active_logs directory..."
        mkdir active_logs
    else
        echo "active_logs directory already exists."
 master
    fi

    if [ ! -d "archived_logs" ]; then
        echo "Creating archived_logs directory..."
 security
        mkdir -p archived_logs

        mkdir archived_logs
    else
        echo "archived_logs directory already exists."
 master
    fi

    if [ ! -d "reports" ]; then
        echo "Creating reports directory..."
 security
        mkdir -p reports
    fi
}
initialize_system

secure_data() {
    chmod 700 active_logs
    ls -ld active_logs
}
secure_data

        mkdir reports
    else
        echo "reports directory already exists."
    fi
}
 master
 # Member 3 - Orchestrator

echo "Starting Hospital System Setup..."

initialize_system

secure_data

echo "System Environment Secured"
echo "Date: $(22)"
