#!/bin/bash
# Script to get used memory
free -m  | grep ^Mem | tr -s ' ' | cut -d ' ' -f 3
