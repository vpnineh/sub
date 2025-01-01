{
  "log": {
    "level": "info",
    "timestamp": true
  },
  "inbounds": [
    {
      "type": "trojan",
      "tag": "trojan-in",
      "listen": "::",
      "listen_port": 7443,
      "sniff": true,
      "sniff_override_destination": true,
      "domain_strategy": "prefer_ipv6",
      "users": [
        {
          "password": "72d1e1c3-1edd-4d3e-b389-4cf485edeb6b"
        }
      ],
      "tls": {
        "enabled": true,
        "server_name": "aws.amazon.com",
	"alpn": ["h3", "spdy/3.1"],
        "reality": {
          "enabled": true,
          "handshake": {
            "server": "aws.amazon.com",
            "server_port": 443
          },
          "private_key": "WKP2V4OxVHDWqg8e9NQVBX8til9vapFeq1teOmt3-mg",
          "short_id": [
            "eaa941a37aeb3aa3"
          ]
        }
      },
      "transport": {
        "type": "grpc"
     }
    }
  ],
  "outbounds": [
    {
      "type": "wireguard",
      "tag": "wireguard-out",
      "domain_strategy": "prefer_ipv6",
      "server": "188.114.97.195",
      "server_port": 4500,
      "system_interface": false,
      "interface_name": "wg0",
      "local_address": [
        "172.16.0.2/32",
        "2606:4700:110:8ac0:9b6a:77d6:d1e3:6467/128"
      ],
      "private_key": "ANmUN2LxtUJfHknYsGgyl8TfLL094UnKmOtYGj4IZWk=",
      "peer_public_key": "bmXOC+F1FxEMF9dyiK2H5/1SUtzH0JuVo51h2wPfgyo=",
      "reserved": "Elf4",
      "workers": 8,
      "mtu": 1280
           }
        ]
}
