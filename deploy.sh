#!/bin/bash
# ═══════════════════════════════════════════════════════════
# Deploy script — Portfolio para VPS Oracle
# Uso: ./deploy.sh
# ═══════════════════════════════════════════════════════════

set -e

REMOTE_USER="ubuntu"
REMOTE_HOST="portifolio.shrimpdev.com"  # via Cloudflare Tunnel ou IP direto
REMOTE_DIR="/var/www/portfolio"

echo "📦 Deploying portfolio to VPS..."

# Sync files (exclude git, dev files)
rsync -avz --delete \
    --exclude='.git' \
    --exclude='.gitignore' \
    --exclude='nginx.conf' \
    --exclude='deploy.sh' \
    --exclude='README.md' \
    ./ "${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_DIR}/"

# Set permissions
ssh "${REMOTE_USER}@${REMOTE_HOST}" "chmod -R 755 ${REMOTE_DIR}"

# Reload nginx
ssh "${REMOTE_USER}@${REMOTE_HOST}" "sudo nginx -t && sudo systemctl reload nginx"

echo "✅ Deploy complete! https://portifolio.shrimpdev.com"
