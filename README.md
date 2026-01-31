# Keycloak 26.5.2 — Production Deployment (Docker Compose)

This repository provides a production-oriented setup for **Keycloak 26.5.2** using **Docker Compose** with an **optimized Keycloak image**, **PostgreSQL**, and externalized configuration.

## What’s included
- **Optimized Keycloak image** (build stage + `start --optimized`)
- **PostgreSQL** with persistent storage
- **Mounted configuration** (`keycloak.conf`) for consistent, auditable settings
- **Custom themes support** via mounted `themes/` directory
- **TLS/HTTPS** enabled using mounted certificates (certs are created/provided externally)
- **systemd unit** to run the stack as a service on the host

## Repository layout
- `Dockerfile` — builds an optimized Keycloak image
- `docker-compose.yml` — Keycloak + PostgreSQL services and volumes
- `conf/keycloak.conf.example` — sample config (no secrets)
- `.env.example` — required variables template (no real secrets)
- `themes/` — custom themes (mounted into the container)
- `systemd/keycloak.service` — systemd unit file
- `certs/` — TLS certs directory (not committed)

