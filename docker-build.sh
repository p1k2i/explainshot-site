#!/bin/bash

# Docker Build and Deploy Script for ExplainShot Website (Linux/macOS)
# This script builds the Docker image and runs the container

set -e

# Default values
ACTION="build"
TAG="explainshot-site:latest"
PORT="3000"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Helper function for colored output
print_color() {
    local color=$1
    local message=$2
    echo -e "${color}${message}${NC}"
}

# Build Docker image
build_image() {
    print_color $GREEN "🐳 Building Docker image: $TAG"

    docker build -t $TAG .

    print_color $GREEN "✅ Docker image built successfully!"
}

# Run Docker container
run_container() {
    print_color $GREEN "🚀 Starting Docker container on port $PORT"

    # Stop existing container if running
    if docker ps -q -f name=explainshot-site | grep -q .; then
        print_color $YELLOW "🛑 Stopping existing container..."
        docker stop explainshot-site
        docker rm explainshot-site
    fi

    # Run new container
    docker run -d \
        --name explainshot-site \
        -p "${PORT}:8080" \
        --restart unless-stopped \
        $TAG

    print_color $GREEN "✅ Container started successfully!"
    print_color $CYAN "🌐 Application is available at: http://localhost:$PORT"
}

# Deploy with Docker Compose
deploy_compose() {
    print_color $GREEN "🐳 Deploying with Docker Compose"

    docker-compose down || true
    docker-compose up --build -d

    print_color $GREEN "✅ Deployed successfully with Docker Compose!"
    print_color $CYAN "🌐 Application is available at: http://localhost:3000"
}

# Show container logs
show_logs() {
    print_color $YELLOW "📋 Showing container logs..."
    docker logs -f explainshot-site
}

# Stop container
stop_container() {
    print_color $YELLOW "🛑 Stopping container..."
    docker stop explainshot-site || true
    docker rm explainshot-site || true
    print_color $GREEN "✅ Container stopped"
}

# Show help
show_help() {
    print_color $CYAN "ExplainShot Docker Management Script"
    echo "Usage: ./docker-build.sh [action] [options]"
    echo ""
    print_color $GREEN "Actions:"
    echo "  build       Build Docker image"
    echo "  run         Build and run container"
    echo "  compose     Deploy with Docker Compose"
    echo "  logs        Show container logs"
    echo "  stop        Stop and remove container"
    echo "  help        Show this help message"
    echo ""
    print_color $GREEN "Environment Variables:"
    echo "  TAG         Docker image tag (default: explainshot-site:latest)"
    echo "  PORT        Port to expose (default: 3000)"
    echo ""
    print_color $GREEN "Examples:"
    echo "  ./docker-build.sh build"
    echo "  PORT=8080 ./docker-build.sh run"
    echo "  ./docker-build.sh compose"
}

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        build|run|compose|logs|stop|help)
            ACTION="$1"
            shift
            ;;
        --tag)
            TAG="$2"
            shift 2
            ;;
        --port)
            PORT="$2"
            shift 2
            ;;
        -h|--help)
            ACTION="help"
            shift
            ;;
        *)
            echo "Unknown option: $1"
            show_help
            exit 1
            ;;
    esac
done

# Use environment variables if set
TAG=${TAG:-"explainshot-site:latest"}
PORT=${PORT:-"3000"}

# Main script logic
print_color $MAGENTA "🎯 ExplainShot Docker Management"

case $ACTION in
    "build")
        build_image
        ;;
    "run")
        build_image
        run_container
        ;;
    "compose")
        deploy_compose
        ;;
    "logs")
        show_logs
        ;;
    "stop")
        stop_container
        ;;
    "help")
        show_help
        ;;
    *)
        print_color $RED "❌ Unknown action: $ACTION"
        show_help
        exit 1
        ;;
esac
