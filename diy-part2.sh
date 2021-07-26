#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Remove v2ray-plugin
rm -rf ./package/lean/v2ray-plugin

# Add helloworld vssr
rm -rf ./package/lean/lua-maxminddb
rm -rf ./package/lean/luci-app-vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git ./package/lean/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr.git ./package/lean/luci-app-vssr

# Add adguardhome
rm -rf ./package/lean/luci-app-adguardhome
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git ./package/lean/luci-app-adguardhome

# Add argon
rm -rf ./package/lean/luci-theme-argon
git clone https://github.com/jerrykuku/luci-theme-argon.git ./package/lean/luci-theme-argon

# Add argon config
rm -rf ./package/lean/luci-app-argon-config
git clone https://github.com/jerrykuku/luci-app-argon-config.git ./package/lean/luci-app-argon-config
