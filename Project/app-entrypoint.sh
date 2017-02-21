#!/bin/bash
sleep 15
python manage.py syncdb --noinput
python manage.py collectstatic --noinput

/usr/local/bin/uwsgi /tmp/uwsgi.ini --uid www-data --gid www-data
