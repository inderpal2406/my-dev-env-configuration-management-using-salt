# This state file can be periodically applied to all minions to perform maintenance tasks.
# Such maintenance tasks could be disk space clearing by removing softwares which were installed as dependency and are no longer 
# required. Maybe because the main pkg for which it was a dependency, was removed.
# Other maintenance task could be taking regular reboots of systems, or bouncing the services, clearing old logs, etc.

remove_redundant_softwares:
  cmd.run:
    - name: apt autoremove
    - runas: root

