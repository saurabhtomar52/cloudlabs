#!/bin/bash

LOG_FILE="/var/log/apache2/access.log"
ERROR_LOG="/var/log/apache2/error.log"

echo "===== WEBSITE LOG CHECK ====="

echo
echo "---- Last 20 Requests ----"
tail -20 "$LOG_FILE"

echo
echo "---- Recent Errors ----"
tail -20 "$ERROR_LOG"

echo
echo "---- 404 Errors ----"
grep "404" "$LOG_FILE" | tail -10

echo
echo "---- 500 Errors ----"
grep "500" "$LOG_FILE" | tail -10

echo
echo "===== CHECK COMPLETE ====="