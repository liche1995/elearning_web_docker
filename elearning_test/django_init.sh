#!/bin/bash

# static file manage
echo "execute collect static file"
python manage.py collectstatic --noinput

# database manage
echo "execute database migrate"
python manage.py makemigrations
python manage.py migrate --database=db_manage

# usergroup initinalize
echo "initialization web user auth"
python manage.py shell <auth_init.py

# execute server
httpd -D FOREGROUND
