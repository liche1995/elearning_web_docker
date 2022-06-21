# 設定並獲取 Apache
FROM httpd

# 預備linux常用包
RUN apt update
RUN apt install wait-for-it
RUN apt install -y vim

# 預備Apache
RUN apt install -y apache2-dev
RUN apt install -y libapache2-mod-wsgi-py3

# 安裝python
RUN apt install -y python3
RUN ln /usr/bin/python3 /usr/bin/python

# 安裝pip
RUN apt install -y python3-pip
RUN ln -f /usr/bin/pip3 /usr/bin/pip

# python環境變數
#ENV PYTHONUNBUFFERED 1
#ENV PYTHONIOENCODING=utf-8
#RUN type export PYTHONPATH=/usr/local/bin/python3.8

# 初始化指令
# 建立資料夾
RUN mkdir /webcode
# 設定工作目錄
WORKDIR /webcode

# 複製當下資料夾所有資料到工作目錄
COPY . /webcode/

# 安裝所需模組
RUN pip install -r modlist.txt


# 設定檔移動
# COPY server_setting.conf /etc/apache2/sites-available
# RUN a2dissite 000-default.conf
# RUN a2ensite server_setting.conf
# RUN service apache2 start