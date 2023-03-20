#!/bin/bash
count = `ss -apn | grep 6443 | wc -l`

if [ $count -gt 0 ]; then
    exit 0
else
    exit 1
fi
