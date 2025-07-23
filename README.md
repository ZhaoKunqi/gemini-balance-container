# gemini-balance-containerfile

Containerfile for easy deployment of gemini-balance in Podman

简化了原本项目里面的docker-compose, 直接换成sqlite, podman直接就能用，为了省事。

```
podman run -d -p 8000:8000 --name gemini-balance ghcr.io/zhaokunqi/gemini-balance-container:latest
```

```
firewall-cmd --add-port=8000/tcp
```

## It will works
