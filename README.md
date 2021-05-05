### Docker sshd

```sh
docker run \
    -p 22:22 \
    -v ${HOME}/.ssh/authorized_keys:/root/.ssh/authorized_keys:ro \
    lwzm/sshd
```

`docker-compose.yaml`:

```yaml
  sshd:
    image: lwzm/sshd
    volumes:
    - /etc/localtime:/etc/localtime:ro
    - YOUR.ssh/authorized_keys:/root/.ssh/authorized_keys:ro
    ports:
    - '22:22'
```

How to build `py-lite.tgz`:

```sh
cd /usr/lib/python*
find . -name '*.py[co]' -delete
# preheat...
find . -name '*.py' -delete
# list files
lsof -F n -p PYTHON_PID | grep dynload | cut -d ' ' -f 1 | cut -c 2-
find /usr/lib/python2* -name '*.py?'
ls /usr/lib/libpython* /usr/bin/python*
```
