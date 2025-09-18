# Guide de Dépannage 

## Problèmes Réseau Courants

### Client ne reçoit pas d'IP DHCP
**Symptômes** : Client n'obtient pas d'adresse 192.168.100.x

**Solutions** :
```bash
# Vérifier le service DHCP
systemctl status isc-dhcp-server
systemctl restart isc-dhcp-server

# Côté client - renouveler l'IP
dhclient -r ens33 && dhclient ens33

**Symptômes** : nslookup www8.starfleet.lan échoue
**Solutions** :
# Vérifier BIND9
systemctl status bind9
systemctl restart bind9

# Tester la configuration
named-checkzone starfleet.lan /etc/bind/db.starfleet.lan

**Symptômes** : Erreur SSL ou timeout
**Solutions** :
# Vérifier Nginx
systemctl status nginx
nginx -t
systemctl restart nginx

# Vérifier les certificats
openssl x509 -in /etc/ssl/certs/starfleet.crt -text -noout

**Logs Utiles**
# DHCP
tail -f /var/log/syslog | grep dhcpd

# DNS  
tail -f /var/log/syslog | grep named

# Nginx
tail -f /var/log/nginx/error.log

**Script de Vérification**
./scripts/verification-services.sh
