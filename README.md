# 🚀 Holodeck : Infrastructure de Développement Web

[![Debian](https://img.shields.io/badge/OS-Debian%2012-red.svg)](https://www.debian.org/)
[![Nginx](https://img.shields.io/badge/Serveur-Nginx-green.svg)](https://nginx.org/)
[![PHP](https://img.shields.io/badge/PHP-7.4%20%7C%208.2-blue.svg)](https://php.net/)
[![MariaDB](https://img.shields.io/badge/Base%20de%20donn%C3%A9es-MariaDB-orange.svg)](https://mariadb.org/)

Infrastructure de développement web de niveau entreprise conçue pour les ingénieurs Starfleet, offrant un environnement complet avec plusieurs versions PHP, authentification sécurisée et outils de développement avancés.

## 📋 Aperçu du Projet

Le projet Holodeck est une infrastructure virtualisée complète qui permet aux ingénieurs de développer et tester des sites web stellaires dans un environnement sécurisé et professionnel.

### Architecture Système
- **VM Serveur** : Debian 12 sans interface graphique (2GB RAM, 2 vCPU, 32GB)
- **VM Client** : Debian 12 avec interface GNOME (2GB RAM, 2 vCPU, 16GB)
- **Réseau** : Configuration Host-only avec services DNS/DHCP intégrés

## ✨ Fonctionnalités Principales

### Services Web Sécurisés (HTTPS)
- **Site PHP 8.2** - Environnement de développement moderne
- **Site PHP 7.4** - Compatibilité avec applications legacy
- **phpMyAdmin** - Gestion intuitive des bases de données
- **Webmin** - Administration système via interface web
- **VS Code Server** - Environnement de développement intégré

### Infrastructure Réseau
- **Serveur DNS** - Résolution de noms pour domaine starfleet.lan
- **Serveur DHCP** - Attribution automatique d'adresses IP
- **Serveur FTP Sécurisé** - Transfert de fichiers avec SSL/TLS
- **Authentification LDAP** - Gestion centralisée des utilisateurs

### Technologies Utilisées
- **Serveur Web** : Nginx (dernière version)
- **PHP** : Versions 7.4 et 8.2 en coexistence
- **Base de données** : MariaDB 12.0.2
- **Sécurité** : SSL/TLS, certificats auto-signés
- **Virtualisation** : VMware avec réseau Host-only

## 🔗 Points d'Accès aux Services

| Service | URL | Description |
|---------|-----|-------------|
| Site PHP 8.2 | https://www8.starfleet.lan | Environnement PHP moderne |
| Site PHP 7.4 | https://www7.starfleet.lan | Environnement PHP legacy |
| phpMyAdmin | https://php.starfleet.lan | Interface de gestion BDD |
| Administration | https://admin.starfleet.lan | Webmin système |
| Développement | https://vscore.starfleet.lan | VS Code Server |

## 🚀 Installation Rapide

### Prérequis
- VMware Workstation/Player
- Image ISO Debian 12
- 8GB RAM minimum disponible
- Connexion Internet pour téléchargements

### Étapes d'Installation
1. **Créer les machines virtuelles** selon les spécifications
2. **Configurer le réseau** en mode Host-only
3. **Installer les services** via scripts automatisés
4. **Configurer SSL/TLS** pour la sécurisation
5. **Tester l'accès** aux différents services

Consultez le [Guide d'Installation Complet](docs/guide-installation.md) pour les instructions détaillées.

## 📚 Documentation

- **[Guide d'Installation](docs/guide-installation.md)** - Procédure complète d'installation
- **[Guide Utilisateur](docs/guide-utilisateur.md)** - Instructions d'utilisation
- **[Dépannage](docs/depannage.md)** - Solutions aux problèmes courants
- **[Export VM](docs/export-vm.md)** - Procédures de sauvegarde et export

## 🔐 Informations d'Accès

### Comptes de Service
| Service | Utilisateur | Mot de passe |
|---------|-------------|--------------|
| phpMyAdmin | phpmyadmin | PhpMyAdmin123! |
| Webmin | root | [mot de passe VM] |
| VS Code Server | - | VSCodeStarfleet2025! |

### Accès FTP Sécurisé
- **Serveur** : 192.168.100.1
- **Port** : 21 (SSL/TLS obligatoire)
- **Utilisateur** : ftpuser
- **Protocole** : FTPS

### Utilisateurs LDAP Test
- **spock** / VulcanLogic123!
- **samet** / Holodeck2025!

## 🛠️ Scripts de Maintenance

```bash
