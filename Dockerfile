FROM ubuntu:23.10

WORKDIR /app

RUN apt update
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:sftpgo/sftpgo -y
RUN apt update
RUN apt install sftpgo -y
COPY sftpgo.json /etc/sftpgo/sftpgo.json
COPY logo.png /usr/share/sftpgo/static/img/logo.png
COPY favicon.png /usr/share/sftpgo/static/img/favicon.png

EXPOSE 8080
EXPOSE 21

CMD ["sftpgo", "serve"]
