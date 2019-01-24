my_nginx_vhost_config:
  - server:
    - listen 8081
    - server_name www.example.com
    - "location /":
      - root /usr/local/www/www-example-com/
      - index index.html
