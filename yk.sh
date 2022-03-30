#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: yulinsoft
#=================================================
echo 'modify completed.'


# Add luci-app-ssr-plus
pushd package/lean
git clone --depth=1 https://github.com/fw876/helloworld
git clone --depth=1 https://github.com/fw876/helloworld.git package/helloworld
popd

#添加smartdns
#git clone https://github.com/kiddin9/luci-app-dnsfilter.git package/luci-app-dnsfilter
git clone https://github.com/pymumu/openwrt-smartdns package/smartdns
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns

