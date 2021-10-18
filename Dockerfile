FROM nginx
COPY ./dist/ /usr/share/nginx/html/
# nginx配置文件名称
COPY ./nginx.conf /etc/nginx/conf.d/vue3-vite.conf
EXPOSE 80