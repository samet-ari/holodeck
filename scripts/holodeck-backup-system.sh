#!/bin/bash
BACKUP_DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_DIR="/backup/holodeck_$BACKUP_DATE"

mkdir -p $BACKUP_DIR

# Backup configurations
cp -r /etc/nginx $BACKUP_DIR/
cp -r /etc/ssl/starfleet $BACKUP_DIR/
cp -r /etc/php $BACKUP_DIR/
cp -r /var/www $BACKUP_DIR/
cp /etc/vsftpd.conf $BACKUP_DIR/
cp -r /etc/ldap $BACKUP_DIR/

# Backup databases
mysqldump --all-databases > $BACKUP_DIR/databases.sql
slapcat > $BACKUP_DIR/ldap-backup.ldif

echo "Backup completed: $BACKUP_DIR"
