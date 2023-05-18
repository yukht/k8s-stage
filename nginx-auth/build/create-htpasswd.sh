#!/bin/sh
# MD5
htpasswd -c -bm /opt/.htpasswd $NGINX_USERNAME $NGINX_PASSWORD
