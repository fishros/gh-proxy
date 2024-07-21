#! /usr/bin/env bash
set -e
cd /app
uwsgi --ini uwsgi.ini

# add config file:
# server {
#     listen 80;
#     server_name github.fishros.org;
#     location / {
#         try_files $uri @app;
#     }
#     location @app {
#         include uwsgi_params;
#         uwsgi_pass unix:///tmp/uwsgi.sock;
#         uwsgi_buffer_size 256k;
#         uwsgi_buffers 32 512k;
#         uwsgi_busy_buffers_size 512k;
#     }
# }

# server {
#     listen 80;
#     server_name github.fishros.org;

#     location / {
#         proxy_pass http://127.0.0.1:82;
#         proxy_set_header Host $host;
#         proxy_set_header X-Real-IP $remote_addr;
#         proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
#     }