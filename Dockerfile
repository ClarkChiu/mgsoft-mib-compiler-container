FROM ubuntu:latest

ENV TZ=Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update && \
    apt install -y wget tar build-essential && \
    wget  https://www.mg-soft.com/files/mgMibBrow-2020b-lx-deb.tar.gz && \
    tar -zxvf mgMibBrow-2020b-lx-deb.tar.gz && \
    rm mgMibBrow-2020b-lx-deb.tar.gz && \
    dpkg -i mgMibBrow-2020b-lx-deb/mgtrapd_12.1-1_x86_64.deb && \
    dpkg -i mgMibBrow-2020b-lx-deb/mgMibBrowser-2020_18.1-1_x86_64.deb

ENTRYPOINT ["/usr/local/mg-soft/mgmibbrowser/bin/mibc.sh"]
