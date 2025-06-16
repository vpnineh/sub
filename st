[

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

]
