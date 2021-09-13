# We can define sections in top.sls which will help us to apply state files on desired minions.
# Targetting can be done using globbing, minion ids, subnet ranges, nodegroups, etc ways.

# Section 1
base:
  # Target is all minions specified by the wildcard '*'
  '*':
    # List of state files that need to be applied to all minions.
    - base.packages
  'dev*':
    - dev.editors
    - dev.debug
  'staging*':
    - prod.firewall
    - prod.logging
  'prod*':
    - prod.firewall
    - prod.logging
  '*web*':
    - web.webserver
  '*db*':
    - db.databaseserver

