FROM panubo/sshd

LABEL maintainer="lwzm@qq.com"

RUN apk add --no-cache python2 \
    && cd /usr/lib/python2* \
    && rm -r idlelib lib2to3 config distutils ensurepip lib-dynload/unicodedata.so lib-dynload/_codecs_* wsgiref* \
    && find . -name '*.py?' -delete
