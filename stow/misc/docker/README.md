
- Prefer Debian/Ubuntu slim bases (app images):
  - Node: `node:20-bookworm-slim`
  - Python: `python:3.12-slim`
- Avoid Alpine unless you’ve validated dependencies.
- Use Docker Compose v2: `docker compose up -d n8n`
- Clean up: `docker system prune -f`

