#!/bin/bash
echo "================================================"
echo "   Soluciones Tecnológicas del Futuro"
echo "   Script de automatización de dependencias"
echo "================================================"

echo ""
echo ">>> Actualizando el sistema..."
sudo apt update -y

echo ""
echo ">>> Instalando paquetes esenciales..."
sudo apt install -y git vim docker.io python3 python3-pip

echo ""
echo ">>> Instalando librerías Python..."
pip3 install boto3 flask pytest --break-system-packages

echo ""
echo ">>> Limpiando logs mayores a 7 días..."
find /var/log -name "*.log" -mtime +7 -delete 2>/dev/null

echo ""
echo "✅ Instalación completada exitosamente"
