FROM node:4

RUN apt-get -y update && apt-get install -y curl
RUN apt-get install -y git
# RUN curl --silent --location https://rpm.nodesource.com/setup_6.x | bash - && apt-get -y install nodejs
RUN apt-get install -y nginx
RUN mkdir -p /var/www/html/
RUN rm -rf /var/lib/apt/lists/*

# ADD nginx/weexweb.conf /etc/nginx/conf.d/
# ADD nginx/nginx.conf /etc/nginx/nginx.conf

ENV NODE_ENV production
# Webhook port
EXPOSE 7777

# nginx port
EXPOSE 80

RUN \
    npm install -g pm2 && \
    npm install hexo-cli -g && \
    git clone -b feature-mirror-site https://github.com/DoranYun/incubator-weex.git /usr/src/weex && \
    cd /usr/src/weex/doc && \
    npm install && \
    pm2 start server.js

