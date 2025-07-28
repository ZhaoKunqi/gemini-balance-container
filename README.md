# Gemini Balance - Easier Containerization

Offer ready-to-use containers and Containerfile for easy deployment of gemini-balance.

```
podman run -d -p 8000:8000 --name gemini-balance ghcr.io/zhaokunqi/gemini-balance-container:latest
```

```
firewall-cmd --add-port=8000/tcp
```

## It will works
