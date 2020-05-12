#!/bin/sh
gunicorn -b :8080 --access-logfile - --error-logfile - app:app
#gunicorn -b :8080 --access-logfile - --error-logfile - wsgi:app
