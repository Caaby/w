#!name=China Rule
#!desc=基础的DIRECT和REJECT规则
#!MANAGED-CONFIG https://raw.githubusercontent.com/caaby/w/surge/china_rule.s interval=43200 strict=true

[Rule]
# Client(仅 macOS)
PROCESS-NAME,UUBooster, DIRECT

# > Download (仅 macOS)
PROCESS-NAME,aria2c, DIRECT
PROCESS-NAME,fdm, DIRECT
PROCESS-NAME,Folx, DIRECT
PROCESS-NAME,NetTransport, DIRECT
PROCESS-NAME,Thunder, DIRECT
PROCESS-NAME,Transmission, DIRECT
PROCESS-NAME,uTorrent, DIRECT
PROCESS-NAME,WebTorrent, DIRECT
PROCESS-NAME,WebTorrent Helper, DIRECT

#>> Unbreak 后续规则修正
RULE-SET,https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Unbreak.list, DIRECT

#>> Advertising 广告
RULE-SET,https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Guard/Advertising.list, REJECT-DROP
DOMAIN-SET,https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Guard/AdvertisingPlus.list, REJECT-DROP

#>> Privacy 隐私
# RULE-SET,https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Guard/Privacy.list, REJECT-DROP

#>> Hijacking 运营商劫持或恶意网站
RULE-SET,https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Guard/Hijacking.list, REJECT-DROP

#>> Apple 国内服务
RULE-SET,https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Extra/Apple/Apple.list, DIRECT

#>> China 中国直连
RULE-SET,https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/China.list, DIRECT
RULE-SET, https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script/rule/Surge/ChinaIPs/ChinaIPs.list, DIRECT

#>> Local Area Network 局域网
RULE-SET, LAN, DIRECT