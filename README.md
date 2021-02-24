### Docker sshd

Based on `panubo/sshd`

```sh
docker run \
    -p 22:22 \
    -e SSH_ENABLE_ROOT=true \
    -v ${HOME}/.ssh/authorized_keys:/root/.ssh/authorized_keys:ro \
    lwzm/sshd
```

```yaml
  sshd:
    image: lwzm/sshd
    volumes:
    - /etc/localtime:/etc/localtime:ro
    - ${HOME}/.ssh/authorized_keys:/root/.ssh/authorized_keys:ro
    ports:
    - '22:22'
```
