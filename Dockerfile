FROM alpine:3.11

LABEL maintainer="lwzm@qq.com"

RUN apk add --no-cache openssh-server \
    && ssh-keygen -A \
    && yes '' | passwd \
    && printf 'AllowTcpForwarding yes\nGatewayPorts clientspecified\nPasswordAuthentication no\n' >/etc/ssh/sshd_config

CMD [ "/usr/sbin/sshd", "-D", "-e" ]

# sshuttle needs python
ADD py-lite.tgz /usr
