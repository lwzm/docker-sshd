FROM panubo/sshd

LABEL maintainer="lwzm@qq.com"

RUN apk add --no-cache python2
ENV SSH_ENABLE_ROOT=true GATEWAY_PORTS=true TCP_FORWARDING=true
