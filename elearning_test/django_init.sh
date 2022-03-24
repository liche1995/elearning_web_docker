#!/bin/bash

# static file manage
python manage.py collectstatic --noinput

# database manage
python manage.py makemigrations
python manage.py migrate --database=db_manage

# usergroup initinalize
python manage.py shell <auth_init.py

# excute server
python manage.py runserver 0.0.0.0:8000
