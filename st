[
{
  "dns" : {
    "servers" : [
      "1.1.1.2",
      "1.0.0.2"
    ]
  },
  "fakedns" : [
    {
      "ipPool" : "198.20.0.0\/15",
      "poolSize" : 512
    },
    {
      "ipPool" : "fc00::\/64",
      "poolSize" : 512
    }
  ],
  "inbounds" : [
    {
      "listen" : "127.0.0.1",
      "port" : 1080,
      "protocol" : "socks",
      "settings" : {
        "auth" : "noauth",
        "ip" : "[::1]",
        "udp" : true
      },
      "sniffing" : {
        "destOverride" : [
          "http",
          "tls",
          "quic",
          "fakedns"
        ],
        "enabled" : true,
        "routeOnly" : true
      },
      "tag" : "socks"
    }
  ],
  "log" : {
    "access" : "",
    "error" : "",
    "loglevel" : "warning"
  },
  "outbounds" : [
    {
      "mux" : {
        "concurrency" : 8,
        "enabled" : true,
        "xudpConcurrency" : 8,
        "xudpProxyUDP443" : "reject"
      },
      "protocol" : "vless",
      "settings" : {
        "vnext" : [
          {
            "address" : "c.88981401.xyz",
            "port" : 443,
            "users" : [
              {
                "encryption" : "none",
                "id" : "c4258f50-fe5d-4b6c-9f09-5a193b7d34ef"
              }
            ]
          }
        ]
      },
      "streamSettings" : {
        "network" : "ws",
        "security" : "tls",
        "sockopt" : {
          "dialerProxy" : "fragment",
          "tcpKeepAliveIdle" : 100
        },
        "tlsSettings" : {
          "allowInsecure" : false,
          "fingerprint" : "firefox",
          "serverName" : "blog.sooriland.blog"
        },
        "wsSettings" : {
          "headers" : {
            "Host" : "blog.sooriland.blog",
            "User-Agent" : "Mozilla\/5.0 (X11; Linux x86_64; rv:127.0) Gecko\/20100101 Firefox\/127.0"
          },
          "path" : "\/@ln2ray?ed=2560"
        }
      },
      "tag" : "proxy"
    },
    {
      "protocol" : "freedom",
      "settings" : {
        "domainStrategy" : "AsIs",
        "fragment" : {
          "interval" : "8-15",
          "length" : "4-6",
          "packets" : "1-2"
        }
      },
      "streamSettings" : {
        "sockopt" : {
          "tcpKeepAliveIdle" : 100
        }
      },
      "tag" : "fragment"
    },
    {
      "protocol" : "freedom",
      "settings" : {

      },
      "tag" : "direct"
    },
    {
      "protocol" : "blackhole",
      "settings" : {
        "response" : {
          "type" : "http"
        }
      },
      "tag" : "block"
    }
  ],
  "remarks" : "🇩🇪 1"
}

,
{
  "remarks": "🇩🇪 2",
  "log": {
    "access": "",
    "error": "",
    "loglevel": "warning"
  },
  "inbounds": [
    {
      "tag": "socks",
      "port": 10808,
      "listen": "127.0.0.1",
      "protocol": "socks",
      "sniffing": {
        "enabled": true,
        "destOverride": [
          "http",
          "tls"
        ],
        "routeOnly": false
      },
      "settings": {
        "auth": "noauth",
        "udp": true,
        "allowTransparent": false
      }
    },
    {
      "tag": "http",
      "port": 10809,
      "listen": "127.0.0.1",
      "protocol": "http",
      "sniffing": {
        "enabled": true,
        "destOverride": [
          "http",
          "tls"
        ],
        "routeOnly": false
      },
      "settings": {
        "auth": "noauth",
        "udp": true,
        "allowTransparent": false
      }
    }
  ],
  "outbounds": [
    {
      "tag": "proxy",
      "protocol": "vless",
      "settings": {
        "vnext": [
          {
            "address": "braze.com",
            "port": 443,
            "users": [
              {
                "id": "8a57150c-3e5d-4643-b5e9-d71f89315523",
                "alterId": 0,
                "email": "t@t.tt",
                "security": "auto",
                "encryption": "none",
                "flow": ""
              }
            ]
          }
        ]
      },
      "streamSettings": {
        "network": "ws",
        "security": "tls",
        "tlsSettings": {
          "allowInsecure": false,
          "serverName": "HDfYRPlc1.MAhsAAMInI.CC",
          "alpn": [
            "h2",
            "http/1.1"
          ],
          "fingerprint": "chrome",
          "show": false
        },
        "wsSettings": {
          "path": "/BO5JWC2IX3sKTdq",
          "headers": {
            "Host": "HDfYRPlc1.MAhsAAMInI.CC"
          }
        },
        "sockopt": {
          "dialerProxy": "fragment",
          "tcpKeepAliveIdle": 100,
          "mark": 255,
          "tcpNoDelay": true
        }
      }
    },
    {
      "tag": "fragment",
      "protocol": "freedom",
      "settings": {
        "domainStrategy": "AsIs",
        "fragment": {
          "packets": "tlshello",
          "length": "10-20",
          "interval": "10-20"
        }
      },
      "streamSettings": {
        "sockopt": {
          "tcpNoDelay": true,
          "tcpKeepAliveIdle": 100
        }
      }
    },
    {
      "tag": "direct",
      "protocol": "freedom",
      "settings": {}
    },
    {
      "tag": "block",
      "protocol": "blackhole",
      "settings": {
        "response": {
          "type": "http"
        }
      }
    }
  ]
}
  ,

{ "remarks": "🇩🇪 3", "log": { "access": "", "error": "", "loglevel": "warning" }, "inbounds": [ { "tag": "socks", "port": 10808, "listen": "127.0.0.1", "protocol": "socks", "sniffing": { "enabled": true, "destOverride": [ "http", "tls" ], "routeOnly": false }, "settings": { "auth": "noauth", "udp": true, "allowTransparent": false } }, { "tag": "http", "port": 10809, "listen": "127.0.0.1", "protocol": "http", "sniffing": { "enabled": true, "destOverride": [ "http", "tls" ], "routeOnly": false }, "settings": { "auth": "noauth", "udp": true, "allowTransparent": false } } ], "outbounds": [ { "tag": "proxy", "protocol": "vless", "settings": { "vnext": [ { "address": "braze.com", "port": 2053, "users": [ { "id": "97b494d8-56ee-49d9-cdf5-7d0df2929ee3", "alterId": 0, "email": "t@t.tt", "security": "auto", "encryption": "none", "flow": "" } ] } ] }, "streamSettings": { "network": "ws", "security": "tls", "tlsSettings": { "allowInsecure": false, "serverName": "FrAg2.MAhsaamIni.cc", "alpn": [ "h2", "http/1.1" ], "fingerprint": "chrome", "show": false }, "wsSettings": { "path": "/CPI", "headers": { "Host": "FrAg2.MAhsaamIni.cc" } }, "sockopt": { "dialerProxy": "fragment", "tcpKeepAliveIdle": 100, "mark": 255, "tcpNoDelay": true } } }, { "tag": "fragment", "protocol": "freedom", "settings": { "domainStrategy": "AsIs", "fragment": { "packets": "tlshello", "length": "10-20", "interval": "10-20" } }, "streamSettings": { "sockopt": { "tcpNoDelay": true, "tcpKeepAliveIdle": 100 } } }, { "tag": "direct", "protocol": "freedom", "settings": {} }, { "tag": "block", "protocol": "blackhole", "settings": { "response": { "type": "http" } } } ], "routing": { "domainStrategy": "AsIs", "rules": [ { "type": "field", "inboundTag": [ "api" ], "outboundTag": "api", "enabled": true }, { "id": "5627785659655799759", "type": "field", "port": "0-65535", "outboundTag": "proxy", "enabled": true } ] } }
  ,

{"remarks":"🇩🇪 4","log":{"access":"","error":"","loglevel":"warning"},"inbounds":[{"tag":"socks","port":10808,"listen":"127.0.0.1","protocol":"socks","sniffing":{"enabled":true,"destOverride":["http","tls"],"routeOnly":false},"settings":{"auth":"noauth","udp":true,"allowTransparent":false}},{"tag":"http","port":10809,"listen":"127.0.0.1","protocol":"http","sniffing":{"enabled":true,"destOverride":["http","tls"],"routeOnly":false},"settings":{"auth":"noauth","udp":true,"allowTransparent":false}}],"outbounds":[{"tag":"proxy","protocol":"vmess","settings":{"vnext":[{"address":"172.66.168.206","port":2096,"users":[{"id":"75a0885f-0ca5-42a4-8651-391cf8193154","alterId":0,"email":"t@t.tt","security":"auto","encryption":"none","flow":""}]}]},"streamSettings":{"network":"ws","security":"tls","tlsSettings":{"allowInsecure":false,"serverName":"DE01.Sh-CloUDflARe.SbS","alpn":["h2","http/1.1"],"fingerprint":"chrome","show":false},"wsSettings":{"path":"/","headers":{"Host":"DE01.Sh-CloUDflARe.SbS"}},"sockopt":{"dialerProxy":"fragment","tcpKeepAliveIdle":100,"mark":255,"tcpNoDelay":true}}},{"tag":"fragment","protocol":"freedom","settings":{"domainStrategy":"AsIs","fragment":{"packets":"tlshello","length":"6-9","interval":"1-2"}},"streamSettings":{"sockopt":{"tcpNoDelay":true,"tcpKeepAliveIdle":100}}},{"tag":"direct","protocol":"freedom","settings":{}},{"tag":"block","protocol":"blackhole","settings":{"response":{"type":"http"}}}],"routing":{"domainStrategy":"AsIs","rules":[{"type":"field","inboundTag":["api"],"outboundTag":"api","enabled":true},{"id":"5465425548310166497","type":"field","outboundTag":"direct","domain":["domain:ir","geosite:cn"],"enabled":true},{"id":"5425034033205580637","type":"field","outboundTag":"direct","ip":["geoip:private","geoip:cn","geoip:ir"],"enabled":true},{"id":"5627785659655799759","type":"field","port":"0-65535","outboundTag":"proxy","enabled":true}]}}

,
{"log": {"access": "","error": "","loglevel": "warning"},"inbounds": [{"tag": "socks","port": 10808,"listen": "127.0.0.1","protocol": "socks","sniffing": {"enabled": true,"destOverride": ["http","tls"],"routeOnly": false},"settings": {"auth": "noauth","udp": true,"allowTransparent": false}},{"tag": "http","port": 10809,"listen": "127.0.0.1","protocol": "http","sniffing": {"enabled": true,"destOverride": ["http","tls"],"routeOnly": false},"settings": {"auth": "noauth","udp": true,"allowTransparent": false}}],"outbounds": [{"tag": "proxy","protocol": "vless","settings": {"vnext": [{"address": "nodejs.org","port": 2053,"users": [{"id": "a2a2f587-7b4b-4186-ac59-8422f75afad4","alterId": 0,"email": "t@t.tt","security": "auto","encryption": "none","flow": ""}]}]},"streamSettings": {"network": "ws","security": "tls","tlsSettings": {"allowInsecure": false,"serverName": "fRaG1.MaHSAamiNI.cc","alpn": ["h2","http/1.1"],"fingerprint": "chrome","show": false},"wsSettings": {"path": "/da","headers": {"Host": "fRaG1.MaHSAamiNI.cc"}},"sockopt": {"dialerProxy": "fragment","tcpKeepAliveIdle": 100,"mark": 255,"tcpNoDelay": true}}},{"tag": "fragment","protocol": "freedom","settings": {"domainStrategy": "AsIs","fragment": {"packets": "tlshello","length": "10-20","interval": "1-3"}},"streamSettings": {"sockopt": {"tcpNoDelay": true,"tcpKeepAliveIdle": 100}}},{"tag": "direct","protocol": "freedom","settings": {}},{"tag": "block","protocol": "blackhole","settings": {"response": {"type": "http"}}}],"routing": {"domainStrategy": "AsIs","rules": [{"type": "field","inboundTag": ["api"],"outboundTag": "api","enabled": true},{"id": "5627785659655799759","type": "field","port": "0-65535","outboundTag": "proxy","enabled": true}]}}
  ,
  {"remarks":"🇩🇪 6","dns":{"servers":["94.140.14.14","94.140.15.15"]},"policy":{"system":{"statsOutboundUplink":true,"statsOutboundDownlink":true}},"log":{"access":"","error":"","loglevel":"none"},"inbounds":[{"tag":"socks","port":10808,"listen":"127.0.0.1","protocol":"socks","sniffing":{"enabled":true,"destOverride":["http","tls"],"routeOnly":false},"settings":{"auth":"noauth","udp":true,"allowTransparent":false}},{"tag":"http","port":10809,"listen":"127.0.0.1","protocol":"http","sniffing":{"enabled":true,"destOverride":["http","tls"],"routeOnly":false},"settings":{"auth":"noauth","udp":true,"allowTransparent":false}},{"tag":"api","port":9090,"listen":"127.0.0.1","protocol":"dokodemo-door","settings":{"udp":false,"address":"127.0.0.1","allowTransparent":false}}],"outbounds":[{"tag":"proxy","protocol":"vless","settings":{"vnext":[{"address":"jnir-addr.cybsecguru.com","port":443,"users":[{"id":"ec8a65ad-aafc-4095-9b8c-ea10890ca629","alterId":0,"email":"t@t.tt","security":"auto","encryption":"none"}]}]},"streamSettings":{"network":"ws","security":"tls","tlsSettings":{"allowInsecure":false,"serverName":"movies.farhangsaraa.tech","alpn":["h2","http/1.1"],"fingerprint":"firefox","show":false},"wsSettings":{"path":"/@JavidnamanIran/?ed=2560","headers":{"Host":"movies.farhangsaraa.tech","User-Agent":"Mozilla/5.0 (X11; Linux x86_64; rv:127.0) Gecko/20100101 Firefox/127.0"}},"sockopt":{"dialerProxy":"fragment","tcpKeepAliveIdle":100,"mark":255}},"mux":{"enabled":true,"concurrency":8,"xudpConcurrency":8,"xudpProxyUDP443":"allow"}},{"tag":"fragment","protocol":"freedom","settings":{"domainStrategy":"AsIs","fragment":{"packets":"1-2","length":"4-6","interval":"8-15"}},"streamSettings":{"sockopt":{"tcpfastopen":true,"TcpNoDelay":true,"tcpKeepAliveIdle":100,"mark":255}}},{"tag":"direct","protocol":"freedom","settings":{}},{"tag":"block","protocol":"blackhole","settings":{"response":{"type":"http"}}}],"stats":{},"api":{"tag":"api","services":["StatsService"]},"routing":{"domainStrategy":"AsIs","rules":[{"type":"field","inboundTag":["api"],"outboundTag":"api"},{"type":"field","network":"udp","outboundTag":"block","port":"443"},{"type":"field","outboundTag":"direct","ip":["geoip:private"]}]}}
,
  {"remarks":"🇩🇪 7","dns":{"servers":["94.140.14.14","94.140.15.15"]},"policy":{"system":{"statsOutboundUplink":true,"statsOutboundDownlink":true}},"log":{"access":"","error":"","loglevel":"none"},"inbounds":[{"tag":"socks","port":10808,"listen":"127.0.0.1","protocol":"socks","sniffing":{"enabled":true,"destOverride":["http","tls"],"routeOnly":false},"settings":{"auth":"noauth","udp":true,"allowTransparent":false}},{"tag":"http","port":10809,"listen":"127.0.0.1","protocol":"http","sniffing":{"enabled":true,"destOverride":["http","tls"],"routeOnly":false},"settings":{"auth":"noauth","udp":true,"allowTransparent":false}},{"tag":"api","port":9090,"listen":"127.0.0.1","protocol":"dokodemo-door","settings":{"udp":false,"address":"127.0.0.1","allowTransparent":false}}],"outbounds":[{"tag":"proxy","protocol":"vless","settings":{"vnext":[{"address":"jnir-addr.cybsecguru.com","port":443,"users":[{"id":"ec8a65ad-aafc-4095-9b8c-ea10890ca629","alterId":0,"email":"t@t.tt","security":"auto","encryption":"none"}]}]},"streamSettings":{"network":"ws","security":"tls","tlsSettings":{"allowInsecure":false,"serverName":"bamdad-da6d31f6-5148-4005-aab4-015eb31e73cb.melodionlineshop.eu.org","alpn":["h2","http/1.1"],"fingerprint":"firefox","show":false},"wsSettings":{"path":"/@JavidnamanIran/?ed=2560","headers":{"Host":"bamdad-da6d31f6-5148-4005-aab4-015eb31e73cb.melodionlineshop.eu.org","User-Agent":"Mozilla/5.0 (X11; Linux x86_64; rv:127.0) Gecko/20100101 Firefox/127.0"}},"sockopt":{"dialerProxy":"fragment","tcpKeepAliveIdle":100,"mark":255}},"mux":{"enabled":true,"concurrency":8,"xudpConcurrency":8,"xudpProxyUDP443":"allow"}},{"tag":"fragment","protocol":"freedom","settings":{"domainStrategy":"AsIs","fragment":{"packets":"1-2","length":"4-6","interval":"8-15"}},"streamSettings":{"sockopt":{"tcpfastopen":true,"TcpNoDelay":true,"tcpKeepAliveIdle":100,"mark":255}}},{"tag":"direct","protocol":"freedom","settings":{}},{"tag":"block","protocol":"blackhole","settings":{"response":{"type":"http"}}}],"stats":{},"api":{"tag":"api","services":["StatsService"]},"routing":{"domainStrategy":"AsIs","rules":[{"type":"field","inboundTag":["api"],"outboundTag":"api"},{"type":"field","network":"udp","outboundTag":"block","port":"443"},{"type":"field","outboundTag":"direct","ip":["geoip:private"]}]}}

]
