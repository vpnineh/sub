
{
  "dns": {
    "servers": [
      {
        "tag": "dns-remote",
        "address": "https://2tnc6zpc9c.cloudflare-gateway.com/dns-query",
        "address_resolver": "dns-direct"
      },
      {
        "tag": "dns-direct",
        "address": "tcp://8.8.4.4",
        "address_resolver": "dns-local",
        "detour": "direct"
      },
      {
        "tag": "dns-local",
        "address": "local",
        "detour": "direct"
      },
      {
        "tag": "dns-block",
        "address": "rcode://success"
      }
    ],
    "rules": [
      {
        "domain": "2tnc6zpc9c.cloudflare-gateway.com",
        "server": "dns-direct"
      },
      {
        "geosite": "category-ads-all",
        "server": "dns-block",
        "disable_cache": true
      }
    ],
    "fakeip": {
      "enabled": true,
      "inet4_range": "198.18.0.0/15",
      "inet6_range": "fc00::/18"
    },
    "independent_cache": true
  },
  "inbounds": [
    {
      "type": "direct",
      "tag": "dns-in",
      "listen": "0.0.0.0",
      "listen_port": 16450,
      "override_address": "8.8.8.8",
      "override_port": 53
    },
    {
      "type": "tun",
      "tag": "tun-in",
      "interface_name": "tun0",
      "mtu": 9000,
      "auto_route": true,
      "strict_route": true,
      "endpoint_independent_nat": true,
      "stack": "system",
      "sniff": true,
      "inet4_address": "172.19.0.1/30"
    },
    {
      "type": "mixed",
      "tag": "mixed-in",
      "listen": "0.0.0.0",
      "listen_port": 2080,
      "sniff": true
    }
  ],
  "outbounds": [
    {
      "type": "hysteria2",
      "tag": "🇵🇱H2",
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
      "type": "direct",
      "tag": "direct"
    },
    {
      "type": "direct",
      "tag": "bypass"
    },
    {
      "type": "block",
      "tag": "block"
    },
    {
      "type": "dns",
      "tag": "dns-out"
    }
  ],
  "route": {
    "rules": [
      {
        "port": 53,
        "outbound": "dns-out"
      },
      {
        "inbound": "dns-in",
        "outbound": "dns-out"
      },
      {
        "network": "udp",
        "port": 443,
        "outbound": "block"
      },
      {
        "geosite": "category-ads-all",
        "outbound": "block"
      },
      {
        "geosite": "all",
        "outbound": "bypass"
      },
      {
        "geoip": "ir",
        "outbound": "bypass"
      },
      {
        "geosite": "ads",
        "outbound": "block"
      },
      {
        "geoip": "private",
        "outbound": "bypass"
      },
      {
        "source_ip_cidr": ["224.0.0.0/3", "ff00::/8"],
        "ip_cidr": ["224.0.0.0/3", "ff00::/8"],
        "outbound": "block"
      }
    ],
    "auto_detect_interface": true
  }
}
