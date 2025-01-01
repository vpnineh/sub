{
  "log": {
    "level": "info",
    "timestamp": true
  },
  "inbounds": [
    {
      "type": "hysteria2",
      "tag": "hy2-in",
      "listen": "::",
      "listen_port": 5060,
      "tcp_fast_open": true,
      "tcp_multi_path": true,
      "udp_fragment": true,
      "udp_timeout": "1m",
      "domain_strategy": "prefer_ipv6",
      "obfs": {
        "type": "salamander",
        "password": "TbXz5+W/YWNkGHRc+NGdD9p7oZV7J8yteRYhO1zrt5s="
      },
      "users": [
        {
          "password": "Tz8/hjj7y5fu+QJgXnTSZ7S8w1S76xVqsSAZNaEvusk="
        }
      ],
      "ignore_client_bandwidth": true,
      "tls": {
        "enabled": true,
        "certificate_path": "/root/warp-folder/ca.crt",
        "key_path": "/root/warp-folder/ca.key"
      },
      "brutal_debug": false
    }
  ],
  "outbounds": [
    {
      "type": "wireguard",
      "tag": "wireguard-out",
      "server": "engage.cloudflareclient.com",
      "server_port": 2408,
      "system_interface": false,
      "interface_name": "wg0",
      "local_address": [
        "172.16.0.2/32",
        "2606:4700:110:8c07:7900:79f5:6db6:b8a6/128"
      ],
      "private_key": "aE3BYdO96f94yNcAbrzHHtic+FMMvnncEN8K5SqCb1Q=",
      "peer_public_key": "bmXOC+F1FxEMF9dyiK2H5/1SUtzH0JuVo51h2wPfgyo=",
      "pre_shared_key": "",
      "reserved": "IKVX",
      "workers": 8,
      "mtu": 1280
           }
     ]
}
