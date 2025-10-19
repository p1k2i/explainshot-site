# Docker Build and Deploy Script for ExplainShot Website
# This script builds the Docker image and runs the container

param(
    [string]$Action = "build",
    [string]$Tag = "explainshot-site:latest",
    [string]$Port = "3000"
)

function Write-ColorOutput {
    param(
        [string]$Message,
        [string]$Color = "White"
    )
    Write-Host $Message -ForegroundColor $Color
}

function Build-DockerImage {
    Write-ColorOutput "🐳 Building Docker image: $Tag" "Green"

    docker build -t $Tag .

    if ($LASTEXITCODE -ne 0) {
        Write-ColorOutput "❌ Docker build failed" "Red"
        exit 1
    }

    Write-ColorOutput "✅ Docker image built successfully!" "Green"
}

function Run-DockerContainer {
    Write-ColorOutput "🚀 Starting Docker container on port $Port" "Green"

    # Stop existing container if running
    $existingContainer = docker ps -q -f name=explainshot-site
    if ($existingContainer) {
        Write-ColorOutput "🛑 Stopping existing container..." "Yellow"
        docker stop explainshot-site
        docker rm explainshot-site
    }

    # Run new container
    docker run -d `
        --name explainshot-site `
        -p "${Port}:8080" `
        --restart unless-stopped `
        $Tag

    if ($LASTEXITCODE -ne 0) {
        Write-ColorOutput "❌ Failed to start Docker container" "Red"
        exit 1
    }

    Write-ColorOutput "✅ Container started successfully!" "Green"
    Write-ColorOutput "🌐 Application is available at: http://localhost:$Port" "Cyan"
}

function Deploy-WithCompose {
    Write-ColorOutput "🐳 Deploying with Docker Compose" "Green"

    docker-compose down
    docker-compose up --build -d

    if ($LASTEXITCODE -ne 0) {
        Write-ColorOutput "❌ Docker Compose deployment failed" "Red"
        exit 1
    }

    Write-ColorOutput "✅ Deployed successfully with Docker Compose!" "Green"
    Write-ColorOutput "🌐 Application is available at: http://localhost:3000" "Cyan"
}

function Show-Logs {
    Write-ColorOutput "📋 Showing container logs..." "Yellow"
    docker logs -f explainshot-site
}

function Stop-Container {
    Write-ColorOutput "🛑 Stopping container..." "Yellow"
    docker stop explainshot-site
    docker rm explainshot-site
    Write-ColorOutput "✅ Container stopped" "Green"
}

function Show-Help {
    Write-ColorOutput "ExplainShot Docker Management Script" "Cyan"
    Write-ColorOutput "Usage: .\docker-build.ps1 -Action <action> [options]" "White"
    Write-ColorOutput ""
    Write-ColorOutput "Actions:" "Green"
    Write-ColorOutput "  build       Build Docker image" "White"
    Write-ColorOutput "  run         Build and run container" "White"
    Write-ColorOutput "  compose     Deploy with Docker Compose" "White"
    Write-ColorOutput "  logs        Show container logs" "White"
    Write-ColorOutput "  stop        Stop and remove container" "White"
    Write-ColorOutput "  help        Show this help message" "White"
    Write-ColorOutput ""
    Write-ColorOutput "Options:" "Green"
    Write-ColorOutput "  -Tag        Docker image tag (default: explainshot-site:latest)" "White"
    Write-ColorOutput "  -Port       Port to expose (default: 3000)" "White"
    Write-ColorOutput ""
    Write-ColorOutput "Examples:" "Green"
    Write-ColorOutput "  .\docker-build.ps1 -Action build" "White"
    Write-ColorOutput "  .\docker-build.ps1 -Action run -Port 8080" "White"
    Write-ColorOutput "  .\docker-build.ps1 -Action compose" "White"
}

# Main script logic
Write-ColorOutput "🎯 ExplainShot Docker Management" "Magenta"

switch ($Action.ToLower()) {
    "build" {
        Build-DockerImage
    }
    "run" {
        Build-DockerImage
        Run-DockerContainer
    }
    "compose" {
        Deploy-WithCompose
    }
    "logs" {
        Show-Logs
    }
    "stop" {
        Stop-Container
    }
    "help" {
        Show-Help
    }
    default {
        Write-ColorOutput "❌ Unknown action: $Action" "Red"
        Show-Help
        exit 1
    }
}
