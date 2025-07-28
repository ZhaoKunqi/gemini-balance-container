#!/bin/sh
set -e

echo "Starting Uvicorn..."
uvicorn app.main:app --host 127.0.0.1 --port 8000 --no-access-log &

echo "Starting Cloudflare Tunnel..."
exec cloudflared tunnel run --token ${CLOUDFLARE_TOKEN}
