# This state file will create a user named admin-user.
# This user will have sudo rights.
# This user will be created on all machines for administrative purposes.

admin-user:
  user.present:
    - name: admin-user
    - usergroup: True
    - groups:
      - sudo
    - home: /home/admin-user
    - password: $5$IpuY6fObWTv4jmoY$2w2A2jq2XgLIA0A4XlFza4nnZozAx3Q2UkbE/cwyEq/
    - shell: /bin/bash
    - fullname: Admin User

