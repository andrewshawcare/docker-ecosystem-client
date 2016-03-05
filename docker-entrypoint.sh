#!/bin/bash

if [[ $# -eq 0 ]]; then
  exec nginx -g 'daemon off;'
else
  echo "Arguments provided: $@"
  exit 0
fi
