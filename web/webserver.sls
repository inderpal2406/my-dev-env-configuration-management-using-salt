install_apache2:
  pkg.installed:
    - name: apache2
    - version: '>=2.4.38'

# Single file can be managed using file.managed salt module and function.
# to synchronize with full hierarchy of files and folders, we use file.recurse.

copy_website_code:
  file.recurse:
    - user: www-data
    - group: www-data
    - file_mode: '0755'
    - dir_mode: '0755'
    - name: /var/www/html/
    - source: salt://web/files/

# Configure access control on files served by APACHE.
configure_htaccess:
  file.managed:
    - user: www-data
    - group: www-data
    - mode: '0755'
    - name: /var/www/html/.htaccess
    - source: salt://web/htaccess

