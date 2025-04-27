#!/bin/bash

echo "=== Setup de Ambiente para Finance App (Fedora) ==="

# Atualizar pacotes
sudo dnf update -y

# Instalar dependências básicas
sudo dnf install -y git curl gcc gcc-c++ make zlib-devel readline-devel openssl-devel libffi-devel

# Instalar Docker
sudo dnf install -y dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl enable docker
sudo systemctl start docker

# Adicionar usuário ao grupo docker (opcional)
sudo usermod -aG docker $USER

# Instalar rbenv e Ruby
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init - bash)"' >> ~/.bashrc
source ~/.bashrc

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

rbenv install 3.3.0
rbenv global 3.3.0

# Instalar Rails
gem install rails -v 8.0.2

# Instalar Node.js e Yarn
sudo dnf install -y nodejs yarnpkg

echo "=== Ambiente preparado! ==="
echo "Agora clone seu repositório e siga os comandos: "
echo "git clone https://github.com/seu-usuario/finance-app.git"
echo "cd finance-app"
echo "docker compose up -d"
echo "bin/rails db:create db:migrate"
echo "bin/dev"
