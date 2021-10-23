#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: yulinsoft
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
sed -i "s/hostname='OpenWrt'/hostname='Hiwif-B70'/g" package/base-files/files/bin/config_generate
sed -i "s/ssid=OpenWrt/ssid=Hiwif-B70/g" package/kernel/mac80211/files/lib/wifi/mac80211.sh
# Modify Mac
sed -i 's/$(mtd_get_mac_ascii bdinfo "Vfac_mac ")/$(mtd_get_mac_binary factory 0xe000)/g' target/linux/ramips/mt7621/base-files/etc/board.d/02_network
# Modify dts
sed -i 's/<0x340000 0x1E00000>/<0x340000 0x78c0000>/g' target/linux/ramips/dts/mt7621_hiwifi_hc5962.dts
sed -i 's/partition@2140000/partition@7c00000/g' target/linux/ramips/dts/mt7621_hiwifi_hc5962.dts
sed -i 's/<0x2140000 0x80000>/<0x7c00000 0x80000>/g' target/linux/ramips/dts/mt7621_hiwifi_hc5962.dts
sed -i 's/partition@21c0000/partition@7c80000/g' target/linux/ramips/dts/mt7621_hiwifi_hc5962.dts
sed -i 's/<0x21c0000 0x80000>/<0x7c80000 0x80000>/g' target/linux/ramips/dts/mt7621_hiwifi_hc5962.dts
sed -i 's/partition@2240000/partition@7d00000/g' target/linux/ramips/dts/mt7621_hiwifi_hc5962.dts
sed -i 's/<0x2240000 0x80000>/<0x7d00000 0x80000>/g' target/linux/ramips/dts/mt7621_hiwifi_hc5962.dts
sed -i 's/partition@22c0000/partition@7d80000/g' target/linux/ramips/dts/mt7621_hiwifi_hc5962.dts
sed -i 's/<0x22c0000 0x1000000>/<0x7d80000 0x80000>/g' target/linux/ramips/dts/mt7621_hiwifi_hc5962.dts
sed -i 's/partition@32c0000/partition@7e00000/g' target/linux/ramips/dts/mt7621_hiwifi_hc5962.dts
sed -i 's/<0x32c0000 0x2000000>/<0x7e00000 0x80000>/g' target/linux/ramips/dts/mt7621_hiwifi_hc5962.dts
sed -i 's/partition@52c0000/partition@7e80000/g' target/linux/ramips/dts/mt7621_hiwifi_hc5962.dts
sed -i 's/<0x52c0000 0x200000>/<0x7e80000 0x80000>/g' target/linux/ramips/dts/mt7621_hiwifi_hc5962.dts
sed -i 's/partition@54c0000/partition@7f00000/g' target/linux/ramips/dts/mt7621_hiwifi_hc5962.dts
sed -i 's/<0x54c0000 0x2ac0000>/<0x7f00000 0x80000>/g' target/linux/ramips/dts/mt7621_hiwifi_hc5962.dts
# Modify imagesize
sed -i 's/32768k/129280k/g' target/linux/ramips/image/mt7621.mk
# Delete Lean password
sed -i '/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF./d' package/lean/default-settings/files/zzz-default-settings
# frpc 0.21.0
# sed -i 's/0.31.1/0.21.0/g' package/lean/frpc/Makefile
echo 'modify completed.'

