#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: yulinsoft
#=================================================
#echo 'modify completed.'

# Add luci-app-ssr-plus
rm -rf package/helloworld
rm -rf package/lean/luci-app-ssr-plus
rm -rf package/lean/xray-core
pushd package/lean
git clone --depth=1 https://github.com/fw876/helloworld
git clone --depth=1 https://github.com/fw876/helloworld.git package/helloworld
popd

