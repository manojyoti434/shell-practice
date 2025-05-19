#!/bin/bash

NUMBER1=100
NUMBER2=200

TIMESTAMP=$(date)

#variable=$(cmd) it stored cmd output into variable#

echo "script executed at: $TIMESTAMP"

SUM=$(($NUMBER1+$NUMBER2))

echo "SUM of $NUMBER1 and $NUMBER2 is : $SUM"
