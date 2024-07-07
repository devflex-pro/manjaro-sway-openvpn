#!/bin/bash

if nmcli -t -f NAME,TYPE connection show --active| grep -q vpn; then
  ~/vpn/down.sh
else 
  ~/vpn/up.sh  
fi
