#!/system/bin/sh
cd /sys/bus/i2c/devices/4-004a

chown root:root *
chmod 777 *
echo "A6_01.raw" > update_cfg0
sleep 1
echo "clp pa numtch: 6" > plugin
echo "clp pa thld: 90 70 0 90" > plugin
echo "clp enable 1" >  plugin

echo "pl enable e" > plugin


