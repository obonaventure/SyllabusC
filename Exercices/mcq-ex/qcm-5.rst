.. -*- coding: utf-8 -*-
.. Copyright |copy| 2012 by `Olivier Bonaventure <http://inl.info.ucl.ac.be/obo>`_, Christoph Paasch et Grégory Detal
.. Ce fichier est distribué sous une licence `creative commons <http://creativecommons.org/licenses/by-sa/3.0/>`_


Questions à choix multiples
===========================

:task_id: lepl1503-5

La matière couverte cette semaine porte sur le système de fichiers et sa manipulation par les processus.

Question 1. Accès aux fichiers
------------------------------

Les bits de permissions permet de contrôler l'accès aux fichiers. Considérons le répertoire ci-dessous :

.. code-block:: console

   -rw-r--r--  1 obo  obo   0 23 mar 21:57 a
   -r-xr-x--x  1 obo  obo   0 23 mar 21:57 b
   -rw-------  1 obo  obo   0 23 mar 21:57 c
   -rw------x  1 obo  obo   0 23 mar 21:57 d
   --w-----w-  1 obo  obo   0 23 mar 21:57 e


.. question:: fileperm 
   :nb_prop: 3 
   :nb_pos: 1 

   Un seul des groupes d'affirmations ci-dessous est vrai. Lequel ?

   .. positive::


      l'utilisateur ``obo`` peut lire le fichier ``c``, exécuter le fichier ``b`` et modifier le contenu du fichier ``d``


   .. positive::

      l'utilisateur ``obo`` peut lire le fichier ``a``, exécuter le fichier ``b`` et modifier le contenu du fichier ``c``


   .. negative::

      l'utilisateur ``obo`` peut lire le fichier ``e``, exécuter le fichier ``b`` et modifier le contenu du fichier ``e``

      .. comment::

         Le fichier ``e`` n'est pas lisible par cet utilisateur.

   .. negative::

      l'utilisateur ``obo`` peut lire le fichier ``c``, exécuter le fichier ``d`` et modifier le contenu du fichier ``b``

      .. comment::

         Le fichier ``b`` n'est pas modifiable par cet utilisateur.

   .. negative::

      l'utilisateur ``obo`` peut lire le fichier ``c``, exécuter le fichier ``a`` et modifier le contenu du fichier ``d``

      .. comment::

         Le fichier ``a`` n'est pas exécutable par cet utilisateur.


Question 2. Fichiers et répertoires
-----------------------------------

Les permissions associées aux répertoires ont un rôle un peu différent de celles qui sont associées aux fichiers. Considérons le répertoire ci-dessous qui contient 4 sous-répertoires.

.. code-block:: console

   drw-------  2 obo  obo   68 23 mar 22:25 a
   dr-x------  2 obo  obo   68 23 mar 22:25 b
   d-wx------  3 obo  obo  102 23 mar 22:27 c
   drwx------  3 obo  obo  102 23 mar 22:26 d

Chacun de ces répertoires contient un fichier qui a comme nom ``f``. La commande `touch(1)`_ peut être utilisée pour créer un fichier vide. Ainsi, dans ce répertoire, la commande ``touch f`` va créer le fichier  ``f``

.. code-block:: console

   ls -l f
   -rw-r--r--  1 obo  obo  0 23 mar 22:30 f

.. question:: touch
   :nb_prop: 3 
   :nb_pos: 1 


   Dans le répertoire ci-dessus, une seule séquence de commandes fonctionne sans erreur. Laquelle ?

   .. positive::

      .. code-block:: console

          ls -l d
          touch c/x
          cd b

   .. positive::

      .. code-block:: console

         ls -l b
         cat c/f
         cd d


   .. negative::


      .. code-block:: console

         ls -l c
         touch d/x
         cd a

      .. comment::

         Il n'est pas possible d'aller dans le répertoire ``a``. En outre, le contenu du répertoire ``c`` ne peut pas être lu avec `ls(1)`_

   .. negative::


      .. code-block:: console

         ls -l c
         touch a/x
         cd c

      .. comment::

         Il n'est pas possible de créer un fichier dans le répertoire ``a``.

   .. negative::

      .. code-block:: console

         ls -l b
         touch b/x
         cd b

      .. comment::

         Il n'est pas possible de créer un fichier dans le répertoire ``b``.



Question 3. Permissions sur les fichiers
----------------------------------------

.. question:: chmod
   :nb_prop: 3 
   :nb_pos: 1 

   La page de manuel de `chmod(1posix)`_ décrit en détails les permissions relatives aux fichiers et répertoires. Ces permissions peuvent être représentées sous une forme numérique ou textuelle. Parmi les affirmations suivantes, relatives à des permissions pour des `fichiers`, un seul groupe est vrai. Lequel ?


   .. positive::


      - Le fichier ayant ``00467`` comme permissions est exécutable par n'importe quel utilisateur
      - Le fichier ayant ``00777`` comme permissions est lisible par son propriétaire
      - Le fichier ayant ``00600`` ne peut être lu que par son propriétaire

   .. positive::

      - Le fichier ayant ``00647`` comme permissions est exécutable par n'importe quel utilisateur
      - Le fichier ayant ``00700`` comme permissions est lisible par son propriétaire
      - Le fichier ayant ``00421`` comme permissions ne peut être lu que par son propriétaire

   .. negative::


      - Le fichier ayant ``00476`` comme permissions est exécutable par n'importe quel utilisateur
      - Le fichier ayant ``00747`` comme permissions est lisible par son propriétaire
      - Le fichier ayant ``00601`` comme permissions ne peut être lu que par son propriétaire

      .. comment::

         Le fichier ayant ``00476`` comme permissions ne peut être exécuté que par un membre du groupe correspondant à ce fichier.

   .. negative::

      - Le fichier ayant ``00677`` comme permissions est exécutable par n'importe quel utilisateur
      - Le fichier ayant ``00017`` comme permissions est lisible par son propriétaire
      - Le fichier ayant ``00400`` comme permissions ne peut être lu que par son propriétaire

      .. comment::

         Le fichier ayant ``00017`` comme permissions n'est pas lisible par son propriétaire

   .. negative::


      - Le fichier ayant ``00755`` comme permissions est exécutable par n'importe quel utilisateur
      - Le fichier ayant ``00417`` comme permissions est lisible par son propriétaire
      - Le fichier ayant ``00222`` comme permissions ne peut être lu que par son propriétaire

      .. comment::

         Le fichier ayant ``00222`` comme permissions n'est pas lisible par son propriétaire

   .. negative::


      - Le fichier ayant ``00666`` comme permissions est exécutable par n'importe quel utilisateur
      - Le fichier ayant ``00400`` comme permissions est modifiable par son propriétaire
      - Le fichier ayant ``00400`` comme permissions ne peut être lu que par son propriétaire

      .. comment::

         Le fichier ayant ``00666`` comme permissions n'est pas exécutable


Question 4. Permissions sur les fichiers
----------------------------------------

Les bits de permissions associés à un fichiers sont généralement représentés sous forme textuelle lorsque la commande `ls(1)`_ affiche le contenu d'un répertoire. Considérons le répertoire ci-dessous :

 .. code-block:: console

   -rw-r--r--  1 obo  obo  0 23 mar 21:57 a
   -rwxr-x--x  1 obo  obo  0 23 mar 21:57 b
   -rw-------  1 obo  obo  0 23 mar 21:57 c
   -rw------x  1 obo  obo  0 23 mar 21:57 d
   --w-r--rw-  1 obo  obo  0 23 mar 21:57 e

.. question:: chmod2
   :nb_prop: 3 
   :nb_pos: 1 

   Parmi les commandes suivantes, un seul groupe permet d'obtenir les mêmes permissions que ci-dessous. Lequel ?

   .. positive::


      .. code-block:: console

         chmod 644 a
         chmod 751 b
         chmod 600 c
         chmod 601 d
         chmod 246 e

   .. negative::


      .. code-block:: console

         chmod 446 a
         chmod 157 b
         chmod 006 c
         chmod 106 d
         chmod 642 e

      .. comment::

         Relisez la page de manuel de `chmod(1)`_

   .. negative::

      .. code-block:: console

         chmod 444 a
         chmod 751 b
         chmod 600 c
         chmod 604 d
         chmod 123 e

      .. comment::

         Relisez la page de manuel de `chmod(1)`_

   .. negative::

      .. code-block:: console

         chmod 322 a
         chmod 364 b
         chmod 300 c
         chmod 301 d
         chmod 123 e

         .. comment::

         Relisez la page de manuel de `chmod(1)`_


Question 5. Manipulation des répertoires
----------------------------------------

Les répertoires sont des fichiers spéciaux. Pour les utiliser, il faut faire appel aux fonctions `opendir(3)`_, `readdir(3)`_  et `closedir(3)`_. 

.. code-block:: c

   /*
    * name!=NULL
    * retourne le nombre de fichiers dans le répertoire name
    * et -1 en cas d'erreur
    */

.. question:: fileperm 
   :nb_prop: 3 
   :nb_pos: 1 

   Parmi les séquences d'instructions ci-dessous, laquelle permet de compter le nombre de fichiers se trouvant dans le répertoire courant ?

   .. positive::


      .. code-block:: c

         int nfiles(char * name) {

           DIR *dirp;
           struct dirent *dp;
           dp=malloc(sizeof(struct dirent));
           if(dp==NULL) {
             return -1;
           }
           dirp = opendir(name);
           if(dirp==NULL) {
             return -1;
           }
           int count=0;
           while ((dp = readdir(dirp)) != NULL) {
              if (dp->d_type==DT_REG) {
                count++;
              }
           }
           int err = closedir(dirp);
           if(err<0) {
              return -1;
           }
           return(count);
         }

   .. negative::


      .. code-block:: c

         int nfiles(char * name) {

           DIR *dirp;
           struct dirent *dp;
           dirp = opendir(name);
           if(dirp==NULL) {
             return -1;
           }
           int count=0;
           while (readdir(dirp) != NULL) {
                count++;
           }
           int err = closedir(dirp);
           if(err<0) {
              return -1;
           }
           return(count);
         }

      .. comment::

         Ce code compte toutes les entrées dans le répertoire et pas seulement le fichiers.

   .. negative::

      .. code-block:: c

          int nfiles2(char * name) {

           DIR dirp;
           struct dirent dp;
           dirp = opendir(name);
           if(dirp==-1) {
             return -1;
           }
           int count=0;
           while ((dp = readdir(dirp)) != -1) {
                count++;
           }

           int err = closedir(dirp);
           if(err<0) {
             return -1;
           }
           return(count);
         }

      .. comment::

         Ce code est erroné. `opendir(3)`_ retourne un pointeur et `readdir(3)`_ également.

   .. negative::

      .. code-block:: c

         int nfiles(char * name) {

           DIR dirp;
           struct dirent dp;
           dirp = opendir(name);
           int count=0;
           while ((dp = readdir(dirp)) != NULL) {
              if (dp->d_type==DT_REG) {
                count++;
              }
           }
           int err = closedir(dirp);
           if(err<0) {
              return -1;
           }
           return(count);
         }

      .. comment::

         Ce code est erroné. `opendir(3)`_ retourne un pointeur et `readdir(3)`_ également.

