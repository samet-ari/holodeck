#!/bin/bash
# Holodeck Backup Script

BACKUP_DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_DIR="/backup/holodeck_$BACKUP_DATE"

echo "=== Sauvegarde Holodeck - $BACKUP_DATE ==="

mkdir -p $BACKUP_DIR

# Sauvegarde des configurations
echo "Sauvegarde des configurations..."
cp -r /etc/nginx $BACKUP_DIR/
cp -r /etc/ssl/starfleet $BACKUP_DIR/
cp -r /etc/php $BACKUP_DIR/
cp -r /etc/bind $BACKUP_DIR/
cp /etc/dhcp/dhcpd.conf $BACKUP_DIR/
cp /etc/vsftpd.conf $BACKUP_DIR/
cp -r /etc/ldap $BACKUP_DIR/

# Sauvegarde du contenu web
echo "Sauvegarde du contenu web..."
cp -r /var/www $BACKUP_DIR/

# Sauvegarde des bases de données
echo "Sauvegarde des bases de données..."
mysqldump --all-databases > $BACKUP_DIR/databases.sql

# Sauvegarde LDAP
echo "Sauvegarde LDAP..."
slapcat > $BACKUP_DIR/ldap-backup.ldif

# Configuration VS Code
cp -r /home/vscode/.config $BACKUP_DIR/vscode-config

echo "Sauvegarde terminée: $BACKUP_DIR"
tar -czf $BACKUP_DIR.tar.gz -C /backup holodeck_$BACKUP_DATE
rm -rf $BACKUP_DIR
echo "Archive créée: $BACKUP_DIR.tar.gz"
