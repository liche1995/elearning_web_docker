# 設定並獲取python 3.8.2
FROM python:3.8.2

# python環境變數
ENV PYTHONUNBUFFERED 1
ENV PYTHONIOENCODING=utf-8
#RUN type export PYTHONPATH=/usr/local/bin/python3.8

# 初始化指令
# 建立資料夾
RUN mkdir /webcode
# 設定工作目錄
WORKDIR /webcode

# 複製當下資料夾所有資料到工作目錄
COPY . /webcode/


# 預備linux常用包
RUN apt update
RUN apt install wait-for-it

# 預備Apache
RUN apt install -y apache2
RUN apt install -y apache2-dev
RUN apt install -y libapache2-mod-wsgi-py3

# 更新pip
RUN pip install pip -U

# 安裝所需模組
RUN pip install -r modlist.txt
