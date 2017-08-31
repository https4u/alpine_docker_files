FROM alpine

MAINTAINER https4u <https4u.org@gmail.com>

ENV LANG zh_CN.UTF-8
ENV LANG zh_CN.UTF-8
ENV LC_COLLATE zh_CN.UTF-8
ENV LC_CTYPE zh_CN.UTF-8
ENV LC_MESSAGES zh_CN.UTF-8
ENV LC_MONETARY zh_CN.UTF-8
ENV LC_NUMERIC zh_CN.UTF-8
ENV LC_TIME zh_CN.UTF-8
ENV LC_ALL zh_CN.UTF-8

ENV TZ=Asia/Shanghai

RUN apk add --no-cache ca-certificates && \
    apk add --no-cache tzdata && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone

CMD ["/bin/sh"]
