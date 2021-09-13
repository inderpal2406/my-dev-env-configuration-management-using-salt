install_firewall_softwares:
  pkg.installed:
    - pkgs:
      - ufw
      #- iptables	# We'll switch to IPTABLES from UFW afterwards.

# In below sections,  We would also add configuration files for whichever firewall we use.

