#!/bin/sh
conky -q -c /home/rngcntr/.config/conky/system.conf &
conky -q -c /home/rngcntr/.config/conky/cpu.conf &
conky -q -c /home/rngcntr/.config/conky/space.conf &
conky -q -c /home/rngcntr/.config/conky/net.conf &
conky -q -c /home/rngcntr/.config/conky/time.conf & exit
