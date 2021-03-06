#!name=General
#!desc=通用配置 包含General Replica
#!system=ios
#!url=https://raw.githubusercontent.com/caaby/w/surge/general.s

[General]
# >> HTTP API 配置
http-api = Fang@0.0.0.0:2222

# >> HTTP-API TLS设置
http-api-tls = true

# >> HTTP API 网页控制台启用
http-api-web-dashboard = true

# >> 隐藏 VPN 图标
hide-vpn-icon = true

# >> 从 /etc/hosts 读取 DNS 记录
read-etc-hosts = true

# >> 排除简单主机名
exclude-simple-hostnames = true

# >> 错误警告显示页
show-error-page-for-reject = true

# >> Hijack DNS
hijack-dns = 8.8.8.8:53, 8.8.4.4:53

# >> 公共Wi-Fi下的默认策略启用
use-default-policy-if-wifi-not-primary = true

# >> Always Real IP Hosts 当 Surge VIF 处理 DNS 问题时，这个选项要求 Surge 返回一个真实的 IP 地址，而不是一个假的 IP 地址（Fake-IP）。
always-real-ip = *.msftconnecttest.com, *.msftncsi.com, *.srv.nintendo.net, *.stun.playstation.net, xbox.*.microsoft.com, *.xboxlive.com, *.logon.battlenet.com.cn, *.logon.battle.net, stun.l.google.com

# >> 跳过代理
skip-proxy = 192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12, 100.64.0.0/10, localhost, *.local, e.crashlytics.com

# >> 路由防火墙
# >> 包含所有的网络请求
include-all-networks = false

# >> 包含本地网络请求
include-local-networks = false

# >> 代理请求本地DNS映射
use-local-host-item-for-proxy = true

# >> 强制http引擎主机
# >> force-http-engine-hosts = 123.59.31.1, 119.18.193.135, 122.14.246.33, 175.102.178.52, 192.30.*, 143.55.*, 140.82.*

# >> 默认情况下，Surge VIF 接口会声明自己是默认路由。但是，由于 Wi-Fi 接口的路由较小，有些流量可能不会通过 Surge VIF 接口。使用此选项可以添加一条较小的路由。
# >> tun-included-routes = 192.168.2.12/32

# >> Surge VIF 只能处理 TCP 和 UDP 协议。使用此选项可以绕过特定的 IP 范围，允许所有流量通过。
# >> tun-excluded-routes = 192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12

# >> 当开启时，如果在 [Host] 段有为某主机名指定 IP，在使用代理访问该主机名时，将使用该 IP 地址进行代理请求，不再依赖远端解析。
# >> use-local-host-item-for-proxy = true

# >> UDP IP 防泄漏
# >> 如果没有代理服务器支持 UDP 转发，可修改为「 direct 」或注释下条，但需注意同一目标主机名 TCP 请求与 UDP 请求的源地址不同所造成的隐私及安全风险。
# >> udp-policy-not-supported-behaviour = reject


[Replica]
# >> 抓取流量 => 过滤器
# >> 隐藏 Apple 请求
hide-apple-request = false

# >> 隐藏 Crash Reporter 请求
hide-crash-reporter-request = true

# >> 隐藏 UDP 会话
hide-udp = false

# >> 关键词过滤器
keyword-filter-type = none
keyword-filter = (null)
