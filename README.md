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
rm -rf idlelib/ ensurepip/ config/ lib-tk/ lib2to3/
cd /usr
tar czf py-lite.tgz bin/python* lib/python2.7/ lib/libpython2.7*
```
