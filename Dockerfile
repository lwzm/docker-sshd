FROM debian:12

LABEL maintainer="lwzm@qq.com"

CMD [ "/usr/sbin/sshd", "-D", "-e" ]

RUN cd /etc/apt \
    && rm sources.list.d/* \
    && . /etc/os-release \
    && echo "deb http://mirrors.tuna.tsinghua.edu.cn/debian/ $VERSION_CODENAME main" >sources.list \
    && apt update \
	&& apt install -y --no-install-recommends ssh \
    && rm -r /var/lib/apt/lists/* \
    && mkdir -p /run/sshd \
    && printf 'AllowTcpForwarding yes\nGatewayPorts clientspecified\n' >>/etc/ssh/sshd_config \
    && printf 'LANG=C.UTF-8\nLANGUAGE=C.UTF-8\nLC_ALL=C.UTF-8\n' >/etc/default/locale
