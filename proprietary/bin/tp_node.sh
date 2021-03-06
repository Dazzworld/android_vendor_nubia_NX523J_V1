#! /bin/sh

if [ ! -d "/data/tp" ]; then
    mkdir /data/tp
    chmod 0775 /data/tp
    chown system:system /data/tp
else
    rm /data/tp/*
fi

# ==============================================================================
# Atmel

if [ -e "/sys/bus/i2c/devices/4-004a/plugin_tag" ]; then
	ln -s /sys/bus/i2c/devices/4-004a/plugin_tag /data/tp/ic_ver
fi

if [ -e "/sys/bus/i2c/devices/4-004a/plugin_tag_uid" ]; then
	ln -s /sys/bus/i2c/devices/4-004a/plugin_tag_uid /data/tp/uid
fi

if [ -e "/sys/bus/i2c/devices/4-004a/easy_wakeup_gesture" ]; then
	chown system:system /sys/bus/i2c/devices/4-004a/easy_wakeup_gesture
	ln -s /sys/bus/i2c/devices/4-004a/easy_wakeup_gesture /data/tp/easy_wakeup_gesture
fi

if [ -e "/sys/bus/i2c/devices/4-004a/slide_switch_gesture" ]; then
	chown system:system /sys/bus/i2c/devices/4-004a/slide_switch_gesture
	ln -s /sys/bus/i2c/devices/4-004a/slide_switch_gesture /data/tp/slide_switch_gesture
fi

if [ -e "/sys/bus/i2c/devices/4-004a/plugin" ]; then
	chown system:system /sys/bus/i2c/devices/4-004a/plugin
	ln -s /sys/bus/i2c/devices/4-004a/plugin /data/tp/plugin
fi

if [ -e "/sys/bus/i2c/devices/4-004a/ic_detect" ]; then
	ln -s /sys/bus/i2c/devices/4-004a/ic_detect /data/tp/ic_detect
fi

if [ -e "/sys/bus/i2c/devices/4-004a/manual_cali" ]; then
	ln -s /sys/bus/i2c/devices/4-004a/manual_cali /data/tp/manual_cali
fi

if [ -e "/sys/bus/i2c/devices/4-004a/touch_mode" ]; then
	chown system:system /sys/bus/i2c/devices/4-004a/touch_mode
	ln -s /sys/bus/i2c/devices/4-004a/touch_mode /data/tp/touch_mode
fi

if [ -e "/sys/bus/i2c/devices/4-004a/c_zone" ]; then
	chown system:system /sys/bus/i2c/devices/4-004a/c_zone
    ln -s /sys/bus/i2c/devices/4-004a/c_zone /data/tp/c_zone
fi

# ==============================================================================
# Goodix

if [ -e "/sys/bus/i2c/devices/4-005d/ic_ver" ]; then
	ln -s /sys/bus/i2c/devices/4-005d/ic_ver /data/tp/ic_ver
fi

if [ -e "/sys/bus/i2c/devices/4-005d/wakeup_gesture" ]; then
	chown system:system /sys/bus/i2c/devices/4-005d/wakeup_gesture
	ln -s /sys/bus/i2c/devices/4-005d/wakeup_gesture /data/tp/easy_wakeup_gesture
fi

if [ -e "/sys/gt1x_test/openshort" ]; then
	ln -s /sys/gt1x_test/openshort /data/tp/ic_detect
fi

if [ -e "/sys/bus/i2c/devices/4-005d/touch_mode" ]; then
	chown system:system /sys/bus/i2c/devices/4-005d/touch_mode
	ln -s /sys/bus/i2c/devices/4-005d/touch_mode /data/tp/touch_mode
fi

# ==============================================================================
# Cypress

if [ -e "/sys/bus/i2c/devices/4-0024/ic_ver" ]; then
	ln -s /sys/bus/i2c/devices/4-0024/ic_ver /data/tp/ic_ver
fi

if [ -e "/sys/bus/i2c/devices/4-0024/hw_reset" ]; then
	ln -s /sys/bus/i2c/devices/4-0024/hw_reset /data/tp/reset
	echo 1 > /sys/bus/i2c/devices/4-0024/hw_reset
fi

if [ -e "/sys/bus/i2c/devices/4-0024/ic_detect" ]; then
	ln -s /sys/bus/i2c/devices/4-0024/ic_detect /data/tp/ic_detect
fi

if [ -e "/sys/bus/i2c/devices/4-0024/manual_cali" ]; then
	ln -s /sys/bus/i2c/devices/4-0024/manual_cali /data/tp/manual_cali
fi

if [ -e "/sys/bus/i2c/devices/4-0024/fw_upgrade_flag" ]; then
	ln -s /sys/bus/i2c/devices/4-0024/fw_upgrade_flag /data/tp/fw_upgrade_flag
fi

if [ -e "/sys/bus/i2c/devices/4-0024/easy_wakeup_gesture" ]; then
	chown system:system /sys/bus/i2c/devices/4-0024/easy_wakeup_gesture
	ln -s /sys/bus/i2c/devices/4-0024/easy_wakeup_gesture /data/tp/easy_wakeup_gesture
fi

if [ -e "/sys/bus/i2c/devices/4-0024/touch_mode" ]; then
	chown system:system /sys/bus/i2c/devices/4-0024/touch_mode
	ln -s /sys/bus/i2c/devices/4-0024/touch_mode /data/tp/touch_mode
fi

if [ -e "/sys/bus/i2c/devices/4-0024/hall_mode" ]; then
	chown system:system /sys/bus/i2c/devices/4-0024/hall_mode
	ln -s /sys/bus/i2c/devices/4-0024/hall_mode /data/tp/hall_mode
fi

# ==============================================================================
# Cypress TM445A

if [ -e "/sys/bus/i2c/devices/3-0024/ic_ver" ]; then
	ln -s /sys/bus/i2c/devices/3-0024/ic_ver /data/tp/ic_ver
fi

if [ -e "/sys/bus/i2c/devices/3-0024/hw_reset" ]; then
	ln -s /sys/bus/i2c/devices/3-0024/hw_reset /data/tp/reset
	echo 1 > /sys/bus/i2c/devices/3-0024/hw_reset
fi

if [ -e "/sys/bus/i2c/devices/3-0024/ic_detect" ]; then
    chown system:system /sys/bus/i2c/devices/3-0024/ic_detect
	ln -s /sys/bus/i2c/devices/3-0024/ic_detect /data/tp/ic_detect
fi

if [ -e "/sys/bus/i2c/devices/3-0024/manual_cali" ]; then
	ln -s /sys/bus/i2c/devices/3-0024/manual_cali /data/tp/manual_cali
fi

if [ -e "/sys/bus/i2c/devices/3-0024/fw_upgrade_flag" ]; then
	ln -s /sys/bus/i2c/devices/3-0024/fw_upgrade_flag /data/tp/fw_upgrade_flag
fi

if [ -e "/sys/bus/i2c/devices/3-0024/easy_wakeup_gesture" ]; then
	chown system:system /sys/bus/i2c/devices/3-0024/easy_wakeup_gesture
	ln -s /sys/bus/i2c/devices/3-0024/easy_wakeup_gesture /data/tp/easy_wakeup_gesture
fi

if [ -e "/sys/bus/i2c/devices/3-0024/touch_mode" ]; then
	chown system:system /sys/bus/i2c/devices/3-0024/touch_mode
	ln -s /sys/bus/i2c/devices/3-0024/touch_mode /data/tp/touch_mode
fi

if [ -e "/sys/bus/i2c/devices/3-0024/hall_mode" ]; then
	chown system:system /sys/bus/i2c/devices/3-0024/hall_mode
	ln -s /sys/bus/i2c/devices/3-0024/hall_mode /data/tp/hall_mode
fi

# ==============================================================================
# Synaptics

#if [ -e "/sys/bus/i2c/devices/4-0020/input/input*/ic_ver" ]; then
if(ls /sys/bus/i2c/devices/4-0020/input/input*/ic_ver) > /dev/null 2>&1; then
	ln -s /sys/bus/i2c/devices/4-0020/input/input*/ic_ver /data/tp/ic_ver
fi

if(ls /sys/bus/i2c/devices/4-0020/input/input*/reset) > /dev/null 2>&1; then
	ln -s /sys/bus/i2c/devices/4-0020/input/input*/reset /data/tp/reset
fi

if(ls /sys/bus/i2c/devices/4-0020/input/input*/wake_gesture) > /dev/null 2>&1; then
	chown system:system /sys/bus/i2c/devices/4-0020/input/input*/wake_gesture
	ln -s /sys/bus/i2c/devices/4-0020/input/input*/wake_gesture /data/tp/easy_wakeup_gesture
fi

if(ls /sys/bus/i2c/devices/4-0020/input/input*/palm_sleep) > /dev/null 2>&1; then
	chown system:system /sys/bus/i2c/devices/4-0020/input/input*/palm_sleep
	ln -s /sys/bus/i2c/devices/4-0020/input/input*/palm_sleep /data/tp/easy_sleep_palm
fi

if [ -e "/sys/bus/i2c/devices/4-0020/touch_mode" ]; then
	chown system:system /sys/bus/i2c/devices/4-0020/touch_mode
	ln -s /sys/bus/i2c/devices/4-0020/touch_mode /data/tp/touch_mode
fi

if(ls /sys/bus/i2c/devices/4-0020/input/input*/f54/ic_detect) > /dev/null 2>&1; then
	chown system:system /sys/bus/i2c/devices/4-0020/input/input*/f54/ic_detect
	ln -s /sys/bus/i2c/devices/4-0020/input/input*/f54/ic_detect /data/tp/ic_detect
fi

if(ls /sys/bus/i2c/devices/4-0020/input/input*/start_update) > /dev/null 2>&1; then
	chown system:system /sys/bus/i2c/devices/4-0020/input/input*/start_update
	ln -s /sys/bus/i2c/devices/4-0020/input/input*/start_update /data/tp/start_update
	cat /sys/bus/i2c/devices/4-0020/input/input*/start_update
fi

# ==============================================================================
# Cypress_FT

if [ -e "/sys/bus/i2c/devices/4-0018/ic_ver" ]; then
	ln -s /sys/bus/i2c/devices/4-0018/ic_ver /data/tp/ft_ic_ver
fi

# ==============================================================================

# ==============================================================================
# Synaptics3103
if [ -e "/sys/class/input/input0/ic_ver" ]; then
	ln -s /sys/class/input/input0/ic_ver /data/tp/ic_ver
fi

if [ -e "/sys/class/input/input0/reset" ]; then
	ln -s /sys/class/input/input0/reset /data/tp/reset
fi

if [ -e "/sys/class/input/input0/wake_gesture" ]; then
	chown system:system /sys/class/input/input0/wake_gesture
	ln -s /sys/class/input/input0/wake_gesture /data/tp/easy_wakeup_gesture
fi

if [ -e "/sys/class/input/input0/f54/ic_detect" ]; then
	ln -s /sys/class/input/input0/f54/ic_detect /data/tp/ic_detect
fi

if [ -e "/sys/class/input/input0/palm_sleep" ]; then
	chown system:system /sys/class/input/input0/palm_sleep
	ln -s /sys/class/input/input0/palm_sleep /data/tp/easy_sleep_palm
fi
