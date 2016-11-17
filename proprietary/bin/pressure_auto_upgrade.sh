#! /bin/sh

#----------------------------pressure sensor firmware upgrade start----------------------------#
if [ -e "/sys/class/pressure_device/pressure_device/enable_update_fw" ]; then
	echo 1 > /sys/class/pressure_device/pressure_device/enable_update_fw
fi
#----------------------------pressure sensor firmware upgrade end-----------------------------#
