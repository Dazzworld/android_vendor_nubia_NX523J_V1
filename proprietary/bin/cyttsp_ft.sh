#!/system/bin/sh
#chown root:root /sys/bus/i2c/devices/4-0018/ic_reflash
#chown root:root /sys/bus/i2c/devices/4-0018/ic_ver
#chmod 777 /sys/bus/i2c/devices/4-0018/ic_reflash
#chmod 777 /sys/bus/i2c/devices/4-0018/ic_ver
chown root:root /sys/bus/i2c/devices/4-0018/*
chmod 777 /sys/bus/i2c/devices/4-0018/*

echo 1 > /sys/bus/i2c/devices/4-0019/mt_config_loading
sleep 1
cat persist/sensors/cyttsp5_paramarray.bin > /sys/bus/i2c/devices/4-0019/mt_config_data
sleep 1
echo 0 > /sys/bus/i2c/devices/4-0019/mt_config_loading

