#!/usr/bin/env bash
set -euo pipefail

if command -v systemctl >/dev/null 2>&1; then
  if systemctl is-active --quiet nginx; then
    systemctl reload nginx || systemctl restart nginx || true
  elif systemctl is-active --quiet httpd; then
    systemctl reload httpd || systemctl restart httpd || true
  fi
else
  service nginx reload || service nginx restart || service httpd reload || service httpd restart || true
fi

echo "Web server reloaded or restarted (if present)."
