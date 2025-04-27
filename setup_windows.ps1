Write-Host "=== Setup de Ambiente para Finance App (Windows) ===" -ForegroundColor Cyan

# Verificar se Chocolatey está instalado
if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Host "Chocolatey não encontrado. Instalando Chocolatey..." -ForegroundColor Yellow
    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
} else {
    Write-Host "Chocolatey já instalado." -ForegroundColor Green
}

# Instalar Ruby, Node.js, Yarn e Docker via Chocolatey
Write-Host "Instalando Ruby, Node.js, Yarn e Docker Desktop..." -ForegroundColor Cyan

choco install ruby --version=3.3.0 -y
choco install nodejs -y
choco install yarn -y
choco install docker-desktop -y

# Atualizar PATH para Ruby e reiniciar terminal se necessário
$env:Path += ";C:\Ruby30-x64\bin"

# Instalar Rails
gem install rails -v 8.0.2

Write-Host "=== Ambiente Básico Instalado! ===" -ForegroundColor Green

Write-Host ""
Write-Host "Agora execute os seguintes comandos para finalizar:" -ForegroundColor Yellow
Write-Host "git clone https://github.com/seu-usuario/finance-app.git"
Write-Host "cd finance-app"
Write-Host "docker compose up -d"
Write-Host "bin\\rails db:create db:migrate"
Write-Host "bin\\dev"
Write-Host ""

Write-Host "=== Setup Finalizado com Sucesso! ===" -ForegroundColor Green
