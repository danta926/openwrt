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

# Modify default IP
sed -i 's/192.168.1.1/192.168.10.50/g' package/base-files/files/bin/config_generate


rm -rf package/openwrt-packages/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/openwrt-packages/luci-theme-argon

#编译passwall新版Sing-box和hysteria，需golang版本1.20或者以上版本
rm -rf feeds/packages/lang/golang
git clone https://github.com/danta926/golang.git feeds/packages/lang/golang
