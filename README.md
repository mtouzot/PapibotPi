/!\ Refonte en cours /!\

# [@PapibotRevillon](https://twitter.com/PapibotRevillon)

Ce projet est celui d'un bot Twitter qui énumère toutes les citations des papillotes Révillon, sans ordre précis. Le format adopté pour les citations est le suivant : 

> PRENOM NOM (ANNEE DE NAISSANCE - ANNEE DE MORT)
> CITATION

Ce format est susceptible d'évoluer au cours des futures versions afin de se rapprocher de celui des citations de Révillon.

Actuellement, l'ensemble des programmes tourne sur un Raspberry Pi Zero W, avec [Raspbian Strech Lite](https://www.raspberrypi.org/downloads/raspbian/)  installé sur une carte SD de 2Go.

## Installation

Pour utiliser Papibot Révillon, il vous faut:
 * Un accès développeur à l'API de Twitter (#Évidement)
 * Une base de données MySQL
 * Les modules python installés via la commande `pip install -r requirements.txt`
 * [Installer un serveur web sur le Raspberry (Apache + PHP + MySQL)](https://raspberry-pi.fr/installer-serveur-web-raspberry-lamp/) pour pouvoir accéder à la base de données de citations

 ## Description des fichiers

Deux fichiers JSON sont utilisés pour se connecter l'un à Twitter, l'autre à la base de données. Ils contiennent les informations de connexions :

 * `userKeys.json` : **_consumer key_**, **_consumer secret_**, **_access token_** et **_access token secret_** pour Twitter, 
 * `dbConnexion.json` : **_host_**, **_user_**, **_password_**, **_database_** et **_port_** pour la base de données

Le bot est développé en Python et se compose de trois fichiers. 

 - `twitterBot.py`fait le lien entre le bot et Twitter.
 - `database.py`fait le lien entre le bot et la base de données
 - `papibot.py`est le cœur principal du bot. Il fait le lien entre la base de données de citations et Twitter.

Pour finir, les tables de la base de données sont contenues dans le fichier `PAPIBOT_REVILLON.sql`

## Version 1.0.0

La présente version a pour but d'être améliorée et adaptée. Elle a été développée afin d'être fonctionnelle avant Noël 2018. Des choix de rapidités ont dû être pris. Veuillez être indulgent sur la qualité esthétique et algorithmique du code.
