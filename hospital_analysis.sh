#!/bin/bash
# ============================================================
# Member 6  Facility Auditor
# Calculates average usage for ICU_WATER_RESERVE and prints
# a formatted summary with printf.
# ============================================================

LOG_DIR="active_logs"

water_audit() {
	    echo " Water Usage Audit: ICU Reserve "
	    local file="$LOG_DIR/water_usage_log.log"
	   
 if [ ! -f "$file" ]; then
            echo "Water log not found."
	    return 1	       
 fi					    
          awk -F'|' '$2 ~ /ICU_WATER_RESERVE/ 
           gsub(/^[ \t]+|[ \t]+$/, "", $3);
           sum += $3;
           count++
}
END {
     if (count > 0) {
	     printf "%-25s %d\n",     "Readings analyzed:", count
	     printf "%-25s %.2f L/min\n", "Average ICU usage:", sum/count
     }else{
    	     print "No ICU_WATER_RESERVE readings found."								
    }' "$file"
}
