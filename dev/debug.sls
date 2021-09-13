# Install debug softwares for developers on DEV machines.

install_debug_softwares:
  pkg.installed:
    - pkgs:
      - nmap
      - ngrep
      - tcpdump
      - traceroute

