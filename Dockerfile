FROM alpine:3.11

LABEL maintainer="lwzm@qq.com"

RUN apk add --no-cache openssh-server python2 \
    && ssh-keygen -A \
    && printf 'AllowTcpForwarding yes\nGatewayPorts clientspecified\n' >>/etc/ssh/sshd_config

CMD [ "/usr/sbin/sshd", "-D", "-e" ]
