FROM panubo/sshd

LABEL maintainer="lwzm@qq.com"

ENV LANG=C.UTF-8
RUN apk add --no-cache tmux
