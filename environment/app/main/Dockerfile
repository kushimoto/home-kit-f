FROM ubuntu:latest

WORKDIR /root

# Shift timezone to Asia/Tokyo.
RUN apt-get update && \
    apt-get install -y tzdata && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
ENV TZ Asia/Tokyo

# Set local to jp.
RUN apt-get update && \
    apt-get install -y language-pack-ja && \
    update-locale LANG=ja_JP.UTF-8 && \ 
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8

# telnetd
RUN apt-get update && \
    apt-get -y install telnetd inetutils-inetd supervisor && \
    touch /etc/supervisord.conf && \
    echo '[supervisord]' >> /etc/supervisord.conf && \
    echo 'nodaemon=true' >> /etc/supervisord.conf && \
    echo '[program:telnetd]' >> /etc/supervisord.conf && \
    echo 'command=/etc/init.d/inetutils-inetd start' >> /etc/supervisord.conf && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN echo "root:root" | /usr/sbin/chpasswd

# --------------------------------------------------

RUN apt-get update && \
    apt-get -y install curl git nodejs npm && \
    npm install && \
    npm install @material-ui/core && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD /usr/bin/supervisord -c /etc/supervisord.conf
