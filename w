
{
  "outbounds": [
    {
      "type": "wireguard",
      "tag": "Hiddify Warp",
      "local_address": [
        "172.16.0.2/24",
        "2606:4700:110:8480:3fbf:fd5c:446a:8672/128"
      ],
      "private_key": "WPwk+Qze5c524lGVke7IQVyEZSYli96XjXK+v0NMeWc=",
      "server": "188.114.99.223",
      "server_port": 2506,
      "peer_public_key": "bmXOC+F1FxEMF9dyiK2H5/1SUtzH0JuVo51h2wPfgyo=",
      "reserved": "wdOI",
      "mtu": 1330,
      "fake_packets": "1-3",
      "fake_packets_size": "10-30",
      "fake_packets_delay": "10-30",
      "fake_packets_mode": "m4"
    },
    {
      "type": "hysteria2",
      "tag": "🇵🇱-🔴November❄️D",
      "detour": "Hiddify Warp",
      "server": "31.186.87.205",
      "server_port": 19468,
      "password": "bc97f674-c578-4940-9234-0a1da46041b9",
      "tls": {
        "enabled": true,
        "server_name": "www.bing.com",
        "insecure": true
      }
    },
    {
      "type": "tuic",
      "tag": "🇵🇱-🔴November-D",
      "detour": "Hiddify Warp",
      "server": "31.186.87.205",
      "server_port": 19469,
      "uuid": "bc97f674-c578-4940-9234-0a1da46041b9",
      "password": "admin123",
      "congestion_control": "bbr",
      "udp_relay_mode": "native",
      "heartbeat": "10s",
      "tls": {
        "enabled": true,
        "server_name": "www.bing.com",
        "insecure": true,
        "alpn": ["h3", "spdy/3.1"]
      }
    },
    {
      "type": "vmess",
      "tag": "🇵🇱-⚪️November|vmess",
      "server": "31.186.87.205",
      "server_port": 13076,
      "uuid": "bc97f674-c578-4940-9234-0a1da46041b9",
      "security": "none",
      "authenticated_length": true,
      "packet_encoding": "xudp",
      "multiplex": {
        "enabled": true,
        "protocol": "h2mux",
        "max_streams": 8
      },
      "transport": {
        "type": "ws",
        "path": "/vmess",
        "max_early_data": 2048,
        "early_data_header_name": "Sec-WebSocket-Protocol"
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇵🇱-⚪️November❄️D",
      "detour": "Hiddify Warp",
      "server": "31.186.87.205",
      "server_port": 13074,
      "password": "bc97f674-c578-4940-9234-0a1da46041b9",
      "tls": {
        "enabled": true,
        "server_name": "www.google.com",
        "insecure": true
      }
    },
    {
      "type": "tuic",
      "tag": "🇵🇱-⚪️November-D",
      "detour": "Hiddify Warp",
      "server": "31.186.87.205",
      "server_port": 13075,
      "uuid": "bc97f674-c578-4940-9234-0a1da46041b9",
      "password": "admin123",
      "congestion_control": "bbr",
      "udp_relay_mode": "native",
      "heartbeat": "10s",
      "tls": {
        "enabled": true,
        "server_name": "www.bing.com",
        "insecure": true,
        "alpn": ["h3", "spdy/3.1"]
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇵🇱-⚪️November❄️",
      "server": "31.186.87.205",
      "server_port": 13074,
      "password": "bc97f674-c578-4940-9234-0a1da46041b9",
      "tls": {
        "enabled": true,
        "server_name": "www.google.com",
        "insecure": true
      }
    },
    {
      "local_address": ["10.1.13.168/32"],
      "mtu": 1280,
      "peer_public_key": "PCHW67+lEKBQI+qRFaRptHN+RrUBIXYZ/v2Xhi+CoRk=",
      "private_key": "4NMyzSD/4t5zT6exVIjgvyOwopaoMTkL1YxmkTpseVM=",
      "server": "82.102.26.226",
      "server_port": 60100,
      "type": "wireguard",
      "tag": "🌵Cactus-🇪🇸",
      "detour": "Hiddify Warp"
    },
    {
      "type": "wireguard",
      "tag": "Proton-🇳🇱1",
      "detour": "Hiddify Warp",
      "local_address": ["10.2.0.2/32"],
      "peer_public_key": "3H83oJvvo4pMX9Lisc1/wNPhnGXoTe6FTubLo8JknSs=",
      "private_key": "+KwejYEefMfkKt1b+QVwuaf9wR2e4a0qOn08ySUtOHE=",
      "server": "190.2.153.215",
      "server_port": 51820,
      "mtu": 1280
    },
    {
      "type": "wireguard",
      "tag": "Proton-US1",
      "detour": "Hiddify Warp",
      "local_address": ["10.2.0.2/32"],
      "peer_public_key": "FF79Ab2fcEYtsyNYxviTUtVxJLuvUcoEOpl8DYbdsgg=",
      "pre_shared_key": "",
      "private_key": "AGFOClYlKyqeLbjpBGkWVz/dxko8FvyVhrux5INxBEQ=",
      "server": "156.146.54.81",
      "server_port": 51820,
      "mtu": 1280
    },
    {
      "type": "wireguard",
      "tag": "Windscribe🇫🇷D",
      "detour": "Hiddify Warp",
      "local_address": ["100.100.196.8/32"],
      "peer_public_key": "cmaT8JIehfRf5PWWDkcBRwLWDb3jrIkk/SDbw4JmUAc=",
      "pre_shared_key": "p9oZWElz4vn74dOqa0+UNIJGxy2/VeBF6b8YIfmVgY0=",
      "private_key": "qKgJJNTkkAr37k74Ix7FkdB3tVIHE1rQBOp4adjm2HU=",
      "server": "138.199.47.222",
      "server_port": 65142,
      "mtu": 1280
    },
    {
      "type": "wireguard",
      "tag": "Proton-US2",
      "detour": "Hiddify Warp",
      "local_address": ["10.2.0.2/32"],
      "peer_public_key": "veE2/V9BCKn+sbselhBFcc2vyhtuJ2Fqaf4jL6buDX8=",
      "private_key": "gNgbSMZoxMIs1J7XH1FP9SXm9QMQj8lcee/l9dz2zlw=",
      "server": "89.187.180.54",
      "server_port": 51820,
      "mtu": 1280
    },
    {
      "type": "wireguard",
      "tag": "Proton-US3",
      "detour": "Hiddify Warp",
      "local_address": ["10.2.0.2/32"],
      "peer_public_key": "u8TqDmhDMeQcMJbMbi8uRcFfXEm5RdOGHygvuEesV0Y=",
      "private_key": "yMCUxuczMTGSDJTHY+TSCZAep9aMzVOtA5aZtuNTG3o=",
      "server": "149.40.62.56",
      "server_port": 51820,
      "mtu": 1280
    },
    {
      "type": "wireguard",
      "tag": "WsW🇵🇱⚪️🔴",
      "detour": "🇵🇱-⚪️November❄️D",
      "local_address": [
        "172.16.0.2/32",
        "2606:4700:110:8867:f596:5ee6:1434:ef0/128"
      ],
      "peer_public_key": "bmXOC+F1FxEMF9dyiK2H5/1SUtzH0JuVo51h2wPfgyo=",
      "private_key": "+Nn6ZC4tOnUIOPMT+OrX4m7vDaT2sRvbswmGvvoFlXQ=",
      "server": "162.159.192.150",
      "server_port": 943,
      "reserved": "4fe8",
      "mtu": 1280
    },
    {
      "type": "wireguard",
      "tag": "Proton-US",
      "detour": "Proton-US2",
      "local_address": [
        "172.16.0.2/32",
        "2606:4700:110:8867:f596:5ee6:1434:ef0/128"
      ],
      "peer_public_key": "bmXOC+F1FxEMF9dyiK2H5/1SUtzH0JuVo51h2wPfgyo=",
      "private_key": "+Nn6ZC4tOnUIOPMT+OrX4m7vDaT2sRvbswmGvvoFlXQ=",
      "server": "162.159.192.150",
      "server_port": 943,
      "reserved": "4fe8",
      "mtu": 1280
    }
  ]
}
