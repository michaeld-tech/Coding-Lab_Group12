#!/usr/bin/bash

initialize_system() {
    if [ ! -d "active_logs" ]; then
        echo "Creating active_logs directory..."
        mkdir -p active_logs
    else
        echo "active_logs directory already exists."
    fi

    if [ ! -d "archived_logs" ]; then
        echo "Creating archived_logs directory..."
        mkdir -p archived_logs
    else
        echo "archived_logs directory already exists."
    fi

    if [ ! -d "reports" ]; then
        echo "Creating reports directory..."
        mkdir -p reports
    else
        echo "reports directory already exists."
    fi
}

secure_data() {
    chmod 700 active_logs
    ls -ld active_logs
}

<<<<<<< HEAD
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
=======
initialize_system
secure_data
echo "System Environment Secured - $(date)"
>>>>>>> a4a875bb65996f55331a05e713a82f46f2cf1208
