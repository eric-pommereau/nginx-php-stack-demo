## Serveur NGINX avec PHP (PHP-FPDM)

Un simple exemple de montage d'un serveur web NGINX prenant en charge le PHP (avec PHP-FPDM)

### !! Mac OS
Sur Mac OS ajouter le plugin vboxfs (pour le sync folder) 
```sh
vagrant plugin install vagrant-vbguest
```

### Lancer la VM
```sh
#Récup du projet GIT
git clone https://github.com/eric-pommereau/nginx-php-stack-demo

# Lancer la VM
vagrant up

# Tester dans l'hôte
curl http://localhost:8080/
```

### Sources

- https://www.guillaume-leduc.fr/projet-installation-configuration-nginx-php-fpm.html
