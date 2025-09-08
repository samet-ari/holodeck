#!/bin/bash
# Script de vérification des services Holodeck

echo "=== Vérification des Services Holodeck ==="
echo "Date: $(date)"
echo "=========================================="

services=("nginx" "php8.2-fpm" "php7.4-fpm" "mariadb" "named" "isc-dhcp-server" "vsftpd" "slapd" "webmin" "code-server")

for service in "${services[@]}"; do
    if systemctl is-active --quiet $service; then
        echo "✅ $service: En cours d'exécution"
    else
        echo "❌ $service: Arrêté"
    fi
done

echo ""
echo "=== Vérification des Ports ==="
echo "Port 80 (HTTP): $(ss -tulnp | grep :80 | wc -l) connexions"
echo "Port 443 (HTTPS): $(ss -tulnp | grep :443 | wc -l) connexions"
echo "Port 21 (FTP): $(ss -tulnp | grep :21 | wc -l) connexions"
echo "Port 53 (DNS): $(ss -tulnp | grep :53 | wc -l) connexions"

echo ""
echo "=== Espace Disque ==="
df -h | grep -E "Filesystem|/dev/"
