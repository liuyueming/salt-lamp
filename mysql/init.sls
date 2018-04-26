mysql-install:
  pkg.installed:
    - pkgs:
      - mariadb
      - mariadb-server
 
mysql-config:
  file.managed:
    - name: /etc/my.cnf
    - source: salt://mysql/file/my.cnf
    - user: root
    - group: root
    - mode: 644
 
mysql-service:
  service.running:
    - name: mariadb
    - enable: True
