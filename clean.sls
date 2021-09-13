# Virtual machines can be easily destroyed and new ones can be created.
# But physical machines are difficult to replace.
# So, defining this file to remove installed packages and return the machine to a baseline.

removeall_custom_softwares:
  pkg.removed:
    - pkgs:
      - shellcheck
      - tree
      - screen
      - tmux
      - openvpn
      - zip
      - p7zip
      - htop
      - wavemon
      - ser2net 
      - vim
      - ngrep
      - nmap
      - traceroute
      - tcpdump
      - redis
      - mongodb
      - apache2
      - ufw
      #- iptables
      - logrotate

