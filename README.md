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
