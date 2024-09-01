# Manjaro Sway OpenVPN Integration

This repository provides scripts and configuration files for managing OpenVPN connections on Manjaro Linux using the Sway window manager. The setup includes seamless integration with Waybar, allowing users to easily toggle VPN connections and monitor their status directly from the panel.

## Features

- **VPN Status Monitoring**: Displays the current VPN connection status in Waybar.
- **VPN Toggle**: Easily turn your VPN connection on or off with a single click.
- **Custom Scripts**: Includes scripts that are executed when the VPN connects or disconnects.

## Requirements

- Manjaro Linux with Sway window manager
- OpenVPN installed and configured
- Waybar installed

## Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/devflex-pro/manjaro-sway-openvpn.git
   cd manjaro-sway-openvpn
   ```

2. **Copy Scripts**:
   Copy the scripts to your local bin directory or another directory in your `$PATH`:
   ```bash
   sudo cp vpn-status.sh vpn-toggler.sh /usr/local/bin/
   ```

3. **Configure Waybar**:
   Modify your Waybar configuration to include the VPN status and toggle button. Append the following to your `~/.config/waybar/config` file:
   ```json
   "custom/openvpn": {
       "format": "VPN: {}",
       "exec": "~/.config/waybar/scripts/vpn-status.sh",
       "interval": 10,
       "on-click": "~/.config/waybar/scripts/vpn-toggler.sh"
   }
   ```

4. **Make Scripts Executable**:
   Ensure the scripts have executable permissions:
   ```bash
   chmod +x /usr/local/bin/vpn-status.sh /usr/local/bin/vpn-toggler.sh
   ```

## Usage

After setting everything up, your Waybar should display the VPN status, and you can click on it to toggle the connection. 

## License

This project is licensed under the MIT License.

---
