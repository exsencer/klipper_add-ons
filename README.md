# Exsencer's klipper_add_ons

## Add on Python Modules

- resonance_holder.py
    - Source: kmobs https://gist.github.com/kmobs/f6def5db272ca5c1b81727482f53bed8
- gcode_shell_command.py
    - Can be installed with kiauh
    - Source: th33xitus https://github.com/th33xitus/kiauh/blob/master/docs/gcode_shell_command.md

## Input Shaping Utilities

- xydamping.r
    - Source: churls' comment https://gist.github.com/kmobs/3a09cc28ec79e62f28d8db2179be7909
- clear_input_shaper.sh, calculate_input_shaper.sh, calculate_damping.sh
    - Source: exsencer

---

### How to use IS Macros

1. Prerequsites
    - R `sudo apt-get install r-base`
    - rootsolve library `sudo /usr/bin/Rscript -e 'install.packages("rootSolve")'`
    - gcode_shell_command.py in klipper/klippy/extras
2. Create a folder in `/home/pi/printer_data/config`
3. Place clear_input_shaper.sh, calculate_input_shaper.sh, calculate_damping.sh, xydamping.r in the folder
    - i.e. `/home/pi/printer_data/config/scripts/xydamping.r`
4. Add input_shaping_macros.cfg to `/home/pi/printer_data/config`
5. Add `[include input_shaping_macros.cfg]` to your printer.cfg

## Misc

- autocommit.sh
    - Source: th33xitus https://github.com/th33xitus/kiauh/wiki/How-to-autocommit-config-changes-to-github%3F