# Install editor softwares for developers on DEV machines.

install_editor_softwares:
  pkg.installed:
    - pkgs:
      - vim
      - nano

