apache-install:
  pkg.installed:
    - name: httpd
 
apache-config:
  file.managed:
    - name: /etc/httpd/conf/httpd.conf
    - source: salt://apache/files/httpd.conf
    - user: root
    - group: root
    - mode: 644
 
apache-running:
  service.running:
    - name: httpd
    - enable: True
