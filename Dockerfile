FROM alpine
MAINTAINER Jonathan Weisberg <jo.weisberg@gmail.com>

RUN apk --no-cache --update add bash tzdata curl ca-certificates
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /root

COPY no-ip.sh /root/no-ip.sh
CMD ["/bin/bash", "/root/no-ip.sh"]