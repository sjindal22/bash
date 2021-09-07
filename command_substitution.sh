#!/bin/bash

START=$(date +%s)
CURRENT_DIRECTORY=$(pwd)
sleep 3
END=$(date +%s)

TIME_DIFFERENCE=$(( END - START ))
echo "Time elapsed is $TIME_DIFFERENCE seconds"
