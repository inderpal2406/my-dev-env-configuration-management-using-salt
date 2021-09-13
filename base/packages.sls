# Install software which are useful in daily life.
install_utility_softwares:
  pkg.installed:
    - pkgs:
      - shellcheck
      - tree

install_remotehelp_softwares:
  pkg.installed:
    - pkgs:
      - screen
      - tmux

install_vpn_softwares:
  pkg.installed:
    - name: openvpn

install_compression_softwares:
  pkg.installed:
    - pkgs:
      - zip
      - p7zip

# Install software to track radio interference at the machine site.
install_wirelesstools:
  pkg.installed:
    - name: wavemon

install_monitoring_softwares:
  pkg.installed:
    - name: htop

# Install software for remote IOT devices to provide a socket connection through a VPN to a physical serial port.
install_IOT_softwares:
  pkg.installed:
    - name: ser2net

