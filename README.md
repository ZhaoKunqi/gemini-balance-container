# Gemini Balance - Easier Containerization

Offer ready-to-use containers and Containerfile for easy deployment of gemini-balance.

## Recommended image for deploying on local server like HomeLab or NAS

use gemini-balance-container:plain

```
podman run -d -p 8000:8000 --name gemini-balance ghcr.io/zhaokunqi/gemini-balance-container:plain
```

and then open http://local-ip-address:8000 to use.

## Recommended image for deploying on remote server like VPS or VDS

use gemini-balance-container:cftunnel

```
podman run -d -e CLOUDFLARE_TOKEN=Your_CloudFlare --name gemini-balance ghcr.io/zhaokunqi/gemini-balance-container:cftunnel
```

and then open your https:// cloudflare link to your container.
