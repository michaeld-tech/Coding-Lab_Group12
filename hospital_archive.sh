#!/usr//bin/bash
ACTIVE_LOGS="active_logs"
ARCHIVED_LOGS="archived_logs"

rotate_logs() {
    echo "=== [Member 4] Rotating Logs ==="
    mkdir -p "$ARCHIVED_LOGS"

    timestamp=$(date +"%Y%m%d_%H%M")

    declare -A logs=(
        ["heart_rate_log.log"]="heart_rate"
        ["temperature_log.log"]="temperature"
        ["water_usage_log.log"]="water_usage"
    )

    for filename in "${!logs[@]}"; do
        prefix="${logs[$filename]}"
        src="$ACTIVE_LOGS/$filename"
        dest="$ARCHIVED_LOGS/${prefix}_${timestamp}.log"

        if [ -f "$src" ]; then
            if [ -e "$dest" ]; then
                echo "Warning: $dest already exists. Skipping $filename to avoid overwrite."
                continue
            fi
            mv "$src" "$dest"
            echo "Archived $filename -> $dest"
        else
            echo "Warning: $src not found, skipping."
        fi
    done
     archived_count=$(ls "$ARCHIVED_LOGS" 2>/dev/null | grep "$timestamp" | wc -l)
    echo "Total files archived in this run: $archived_count"

    echo "Recreating empty log files in $ACTIVE_LOGS for continuity..."
    touch "$ACTIVE_LOGS/heart_rate_log.log"
    touch "$ACTIVE_LOGS/temperature_log.log"
    touch "$ACTIVE_LOGS/water_usage_log.log"

    echo "=== Log rotation complete at $(date) ==="
}

main() {
    rotate_logs
}

main
