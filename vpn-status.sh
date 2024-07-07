#!/bin/bash

if nmcli connection show --active | grep -q vpn; then
  echo '{"text": "VPN: UP", "tooltip": "VPN Connected", "class": "connected"}'
else 
  echo '{"text": "VPN: DOWN", "tooltip":"VPN Disconnected", "class": "disconnected"}'
fi
