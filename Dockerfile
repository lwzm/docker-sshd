FROM panubo/sshd

LABEL maintainer="lwzm@qq.com"

RUN echo 'export LANG=C.UTF-8' >>~/.profile && apk add --no-cache tmux
