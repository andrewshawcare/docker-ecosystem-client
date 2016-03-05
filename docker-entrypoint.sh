#!/bin/bash

if [[ $# -eq 0 ]]; then
  exec nginx -g 'daemon off;'
else
  exit 0
fi
