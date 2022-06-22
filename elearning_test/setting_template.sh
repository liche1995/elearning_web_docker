#!/bin/sh
config1=$1
config2=$2
config3=$3
config4=$4
config5=$5

cat << EOF
#WSGI setting
$config1 $config2 $config3
$config4 $config5n/
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