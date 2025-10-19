# ExplainShot Docker Setup

This directory contains Docker configuration files for containerizing the ExplainShot website.

## Files Overview

- `Dockerfile` - Multi-stage production build
- `Dockerfile.dev` - Development container with hot reloading
- `docker-compose.yml` - Production orchestration
- `docker-compose.dev.yml` - Development orchestration
- `nginx.conf` - Nginx configuration for production
- `.dockerignore` - Files to exclude from Docker context
- `docker-build.ps1` - PowerShell script for Windows
- `docker-build.sh` - Bash script for Linux/macOS

## Quick Start

### Production Build

```powershell
# Windows (PowerShell)
.\docker-build.ps1 -Action run

# Linux/macOS
./docker-build.sh run
```

### Development with Hot Reloading

```bash
docker-compose -f docker-compose.dev.yml up --build
```

### Using Docker Compose (Production)

```bash
docker-compose up --build -d
```

## Available Commands

### PowerShell Script (Windows)

```powershell
# Build image only
.\docker-build.ps1 -Action build

# Build and run container
.\docker-build.ps1 -Action run -Port 8080

# Deploy with Docker Compose
.\docker-build.ps1 -Action compose

# Show container logs
.\docker-build.ps1 -Action logs

# Stop container
.\docker-build.ps1 -Action stop

# Show help
.\docker-build.ps1 -Action help
```

### Bash Script (Linux/macOS)

```bash
# Make script executable
chmod +x docker-build.sh

# Build image only
./docker-build.sh build

# Build and run container
PORT=8080 ./docker-build.sh run

# Deploy with Docker Compose
./docker-build.sh compose

# Show container logs
./docker-build.sh logs

# Stop container
./docker-build.sh stop
```

## Configuration

### Environment Variables

- `NODE_ENV` - Set to `production` or `development`
- `PORT` - Port to expose (default: 3000 for production, 5173 for dev)
- `TAG` - Docker image tag (default: `explainshot-site:latest`)

### Nginx Configuration

The production build uses Nginx with:
- Gzip compression
- Security headers
- Client-side routing support
- Static asset caching
- Health check endpoint at `/health`

### Health Checks

The production container includes health checks:
- HTTP check on `/health` endpoint
- 30-second intervals
- 3 retries before marking unhealthy

## Ports

- **Production**: Port 8080 (internal) → 3000 (host)
- **Development**: Port 5173 (internal) → 5173 (host)

## Security Features

- Non-root user execution
- Security headers in Nginx
- Minimal Alpine Linux base images
- Docker secrets support ready

## Troubleshooting

### Common Issues

1. **Port already in use**
   ```bash
   # Stop existing containers
   docker stop explainshot-site
   docker rm explainshot-site
   ```

2. **Build fails**
   ```bash
   # Clean Docker cache
   docker system prune -f
   docker build --no-cache -t explainshot-site:latest .
   ```

3. **Development hot reload not working**
   - Ensure volumes are properly mounted
   - Check that Vite is configured for `0.0.0.0` host

### Logs

```bash
# View container logs
docker logs explainshot-site

# Follow logs in real-time
docker logs -f explainshot-site
```

### Shell Access

```bash
# Access running container
docker exec -it explainshot-site sh
```
