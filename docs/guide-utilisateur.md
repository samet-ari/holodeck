# Guide d'Utilisation Holodeck

## Accès aux Services Web

### Services Disponibles

| Service | URL | Description | Authentification |
|---------|-----|-------------|------------------|
| Site PHP 8.2 | https://www8.starfleet.lan | Environnement de développement PHP moderne | Aucune |
| Site PHP 7.4 | https://www7.starfleet.lan | Environnement PHP legacy | Aucune |
| phpMyAdmin | https://php.starfleet.lan | Gestion base de données | phpmyadmin/PhpMyAdmin123! |
| Webmin | https://admin.starfleet.lan | Administration système | root/[mot de passe VM] |
| VS Code Server | https://vscore.starfleet.lan | Développement web | VSCodeStarfleet2025! |

### Configuration Réseau Client

#### Paramètres Automatiques (DHCP)
- **Adresse IP**: 192.168.100.10-100 (automatique)
- **Masque**: 255.255.255.0
- **Passerelle**: 192.168.100.1
- **DNS**: 192.168.100.1

#### Vérification de Connectivité
```bash
# Tester la connectivité
ping 192.168.100.1

# Vérifier la résolution DNS
nslookup www8.starfleet.lan

# Tester les services web
curl -k https://www8.starfleet.lan
