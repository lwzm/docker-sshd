### Docker sshd

```sh
docker run \
    -p 22:22 \
    -v ${HOME}/.ssh/authorized_keys:/root/.ssh/authorized_keys:ro \
    lwzm/sshd
```

```yaml
  sshd:
    image: lwzm/sshd
    volumes:
    - YOUR.ssh/authorized_keys:/root/.ssh/authorized_keys:ro
    ports:
    - '22:22'
```
