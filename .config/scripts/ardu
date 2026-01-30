#!/bin/bash

if [ "$1" == "" ]; then
  echo "Please enter the sketch file path."
  exit 2
else
  echo "sketch: $1"
  arduino-cli compile --fqbn arduino:avr:uno "$1"
  arduino-cli upload -p /dev/ttyACM0 --fqbn arduino:avr:uno "$1"
fi
