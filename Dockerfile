FROM debian

LABEL maintainer="lwzm@qq.com"

RUN apt update && apt install -y --no-install-recommends ssh \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir -p /run/sshd \
    && printf 'AllowTcpForwarding yes\nGatewayPorts clientspecified\n' >>/etc/ssh/sshd_config

CMD [ "/usr/sbin/sshd", "-D", "-e" ]
