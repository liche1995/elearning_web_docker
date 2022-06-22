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

# setting server property file
infotext=$(mod_wsgi-express module-config)
server_setting=$(./setting_template.sh $infotext)
echo $server_setting>>/usr/local/apache2/conf/httpd.conf #need to solve newline problem

# execute server
httpd -D FOREGROUND


