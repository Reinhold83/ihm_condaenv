#!/bin/sh
gunicorn -b :$PORT --access-logfile - --error-logfile - wsgi:app 
#gunicorn -b :8080 --access-logfile - --error-logfile - wsgi:app
#- --host=0.0.0.0 - --admin_host=0.0.0.0
