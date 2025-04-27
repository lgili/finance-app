@echo off
echo === Setup de Ambiente para Finance App (Windows) ===

:: Instalações Manuais Necessárias
echo Baixe e instale manualmente:
echo - RubyInstaller: https://rubyinstaller.org/
echo - Docker Desktop: https://www.docker.com/products/docker-desktop/
echo - Node.js: https://nodejs.org/
echo - Yarn: https://classic.yarnpkg.com/en/docs/install#windows-stable

pause

:: Instruções após instalar
echo === Após instalar Ruby, Node.js, Yarn e Docker Desktop ===
echo Execute os comandos:
echo.
echo gem install rails -v 8.0.2
echo.
echo Clone o repositório:
echo git clone https://github.com/seu-usuario/finance-app.git
echo cd finance-app
echo docker compose up -d
echo bin\\rails db:create db:migrate
echo bin\\dev
pause
