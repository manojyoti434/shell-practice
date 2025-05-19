#!/bin/bash

echo "all variables passed to script: $@"
echo "number of variable spassed: $#"
echo "script name: $0"
echo "present working directory: $PWD"

echo "home directory of user who is running script: $HOME"
echo "user who is running the script: $user"
echo "pid of current running script : $$"
sleep 10 &
echo "PID of last command running in background: $!"