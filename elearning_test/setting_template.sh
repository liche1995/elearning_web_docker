#!/bin/sh
out=$(mod_wsgi-express module-config)

cat<< EOF /usr/local/apache2/conf/httpd.conf -> httpd.conf
#WSGI setting
$out
WSGIPythonPath "/webcode"

WSGIScriptAlias / /webcode/elearning_test/wsgi.py application-group=%{GLOBAL}

<Directory "/webcode/elearning_test">
    <Files wsgi.py>
		Require all granted
	</Files>
</Directory>


Alias /static /webcode/templates/staticfiles
<Directory /webcode/templates/staticfiles>
    Require all granted
</Directory>


Alias /fileinfo /webcode/fileinfo
<Directory /webcode/fileinfo>
    Require all granted
</Directory>
EOF

mv -f httpd.conf /usr/local/apache2/conf