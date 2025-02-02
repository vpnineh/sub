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
]