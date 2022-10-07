#!/bin/bash
echo "X Dampening Ratio:";
/usr/bin/Rscript "/home/pi/xdamping.r";
echo "Y Dampening Ratio:";
/usr/bin/Rscript "/home/pi/ydamping.r";
mv /tmp/*.pdf ~/klipper_config/input_shaper_results;