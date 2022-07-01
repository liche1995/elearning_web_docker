FROM nginx

# 預備常用包
RUN apt update
RUN apt install -y vim

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/

CMD ["nginx", "-g", "daemon off;"]