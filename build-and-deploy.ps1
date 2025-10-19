# Build and deploy script for ExplainShot Website

Write-Host "🚀 Building ExplainShot Website..." -ForegroundColor Green

# Check if npm is available
if (-not (Get-Command npm -ErrorAction SilentlyContinue)) {
    Write-Host "❌ npm is not installed or not in PATH" -ForegroundColor Red
    exit 1
}

# Install dependencies if node_modules doesn't exist
if (-not (Test-Path "node_modules")) {
    Write-Host "📦 Installing dependencies..." -ForegroundColor Yellow
    npm install
    if ($LASTEXITCODE -ne 0) {
        Write-Host "❌ Failed to install dependencies" -ForegroundColor Red
        exit 1
    }
}

# Run type checking
Write-Host "🔍 Running type check..." -ForegroundColor Yellow
npm run type-check
if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Type check failed" -ForegroundColor Red
    exit 1
}

# Run linting
Write-Host "🔧 Running ESLint..." -ForegroundColor Yellow
npm run lint
if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Linting failed" -ForegroundColor Red
    exit 1
}

# Build the project
Write-Host "🔨 Building for production..." -ForegroundColor Yellow
npm run build
if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Build failed" -ForegroundColor Red
    exit 1
}

Write-Host "✅ Build completed successfully!" -ForegroundColor Green
Write-Host "📁 Built files are in the 'dist' folder" -ForegroundColor Cyan

# Optional: Start preview server
$preview = Read-Host "Do you want to preview the build? (y/N)"
if ($preview -eq "y" -or $preview -eq "Y") {
    Write-Host "🌐 Starting preview server..." -ForegroundColor Yellow
    npm run preview
}
