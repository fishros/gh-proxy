pip install flask requests uwsgi
cd app
uwsgi --ini uwsgi.ini

# add config file:
# server {
#     listen 80;
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