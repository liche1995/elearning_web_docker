##!/bin/bash

# static file manage
echo "excute collect static file"
python manage.py collectstatic --noinput

# database manage
echo "excute database migrate"
python manage.py makemigrations
python manage.py migrate --database=db_manage

# usergroup initinalize
echo "initialization web user auth"
python manage.py shell <auth_init.py

uwsgi --ini /webcode/uwsgi.ini
# start up python compiler to keep conatiner active
python