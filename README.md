# Glint — Self-hosted Messaging + Social App (Scaffold)

This repo contains a production-ready scaffold for Glint:
- Backend: NestJS, Prisma (Postgres), Redis, MinIO, Socket.IO
- Media worker: FFmpeg based processing (HLS, thumbnails)
- Frontend: Flutter (Android / iOS / Web / Desktop)
- Security: Signal Protocol clients (E2E), Argon2, TOTP support
- Compliance: Grievance Officer, DSR, retention 180 days, policy versioning

See file paths in repo and `infra` for Docker compose.

**Start (dev)**:
```bash
cd infra
docker compose up -d --build
# then run typical backend tasks: prisma migrate, seed, etc.
