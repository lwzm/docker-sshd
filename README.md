### Docker sshd

```sh
docker run \
    -p 2:22 \
    -v ${HOME}/.ssh/authorized_keys:/root/.ssh/authorized_keys:ro \
    lwzm/sshd
```
