# 設定並獲取nginx
FROM nginx

# 預備常用包
RUN apt update
RUN apt install wait-for-it
RUN apt install -y vim

# 預備python
RUN apt install -y python3
RUN ln /usr/bin/python3 /usr/bin/python
RUN apt install -y python3-pip
RUN ln -f /usr/bin/pip3 /usr/bin/pip

# python環境變數
ENV PYTHONUNBUFFERED 1

# 初始化指令
# 建立資料夾
RUN mkdir /webcode
# 設定工作目錄
WORKDIR /webcode

# 複製當下資料夾所有資料到工作目錄
COPY . /webcode/

# 安裝所需模組
RUN pip install -r modlist.txt
RUN pip install uwsgi



