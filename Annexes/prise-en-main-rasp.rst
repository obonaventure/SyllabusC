.. -*- coding: utf-8 -*-
.. Copyright |copy| 2019 by Charles-Henry Bertrand Van Ouytsel and Sébastien Strebelle.
.. Ce fichier est distribué sous une licence `creative commons <http://creativecommons.org/licenses/by-sa/3.0/>`_


Flashage du raspberry pi
========================



Se connecter à son raspberry
============================

Dans cette section, nous allons voir une manière de vous connecter à votre raspberry pour exécuter des commandes sur celui-ci. Nus utiliserons ici le partage de connexion ethernet. D'autres méthodes existent pour se connecter mais ne seront pas couvertes dans cette annexe. Vous restez libres de vous renseigner par vous-même sur ces autres méthodes mais les assitants du cours ne pourrons alors pas vous aider si vous rencontrez un soucis de connexion. Il est nécessaire que SSH soit activé au préalable sur le raspberry.


Windows
-------

Pré-requis : Vous aurez besoin du logiciel Putty (https://www.putty.org/)

1. Accédez au menu "Paramètres réseau et internet"
2. Sélectionnez "Modifier les options d'adaptateur"
3. Faites un clic droit sur Wifi et sélectionnez "Propriétés"
4. Dans l'onglet "Partage", Cochez la case "Autoriser d'autres utilisateurs du réseau à se connecter via la connexion internet de cet ordinateur"
5. Faites maintenant un clic droit sur l'Ethernet (adaptateur LAN) et sélectionnez à nouveau "Propriétés"
6. Double cliquez sur l'option IPV4 et notez l'IP dynamique affichée.
7. Connectez votre raspberry à votre ordinateur via le câble Ethernet de votre boite.
8. Ouvrez Putty, entrez l'addresse IP trouvée précédemment puis appuyez sur "Open"
9. Dans l'invite de commande, indiquez comme nom d'utilisateur "pi" et comme mot de passe "raspberry"
10. Vous voilà connecté à votre raspberry !

Linux
-----



Mac OS
------
