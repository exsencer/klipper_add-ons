#!/bin/bash

/home/pi/klipper/scripts/calibrate_shaper.py /tmp/resonances_x_*.csv -o /home/pi/printer_data/config/input_shaper_results/shaper_calibrate_x.pdf;
/home/pi/klipper/scripts/calibrate_shaper.py /tmp/resonances_y_*.csv -o /home/pi/printer_data/config/input_shaper_results/shaper_calibrate_y.pdf;
#/home/pi/klipper/scripts/graph_accelerometer.py -c /tmp/raw_data_axis*.csv -o /home/pi/printer_data/config/input_shaper_results/resonances.pdf;
