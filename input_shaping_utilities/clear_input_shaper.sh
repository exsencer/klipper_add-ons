#!/bin/bash

rm /tmp/*.csv; # Remove all past resonance test csv data
mkdir -p /home/pi/printer_data/config/input_shaper_results # Make an IS folder if doesnt exist
rm /home/pi/printer_data/config/input_shaper_results/*; # Remove old IS graphs