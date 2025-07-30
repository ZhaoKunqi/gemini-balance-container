# Gemini Balance - Easier Containerization

Offer ready-to-use containers and Containerfile for easy deployment of gemini-balance.

## use gemini-balance-container:cftunnel(Recommended when deploying on remote server like VPS or VDS)

```
podman run -d -e CLOUDFLARE_TOKEN=Your_CloudFlare --name gemini-balance ghcr.io/zhaokunqi/gemini-balance-container:cftunnel
```

## use gemini-balance-container:plain (Recommended when deploying on local server like HomeLab or NAS)

```
podman run -d -p 8000:8000 --name gemini-balance ghcr.io/zhaokunqi/gemini-balance-container:plain
```

and then open http://local-ip-address:8000 to use.

