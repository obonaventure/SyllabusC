.. -*- coding: utf-8 -*-
.. Copyright |copy| 2012, 2019 by `Olivier Bonaventure <http://inl.info.ucl.ac.be/obo>`_, Christoph Paasch et Grégory Detal
.. Ce fichier est distribué sous une licence `creative commons <http://creativecommons.org/licenses/by-sa/3.0/>`_


*********
Glossaire
*********

.. glossary::
   :sorted:

   CPU
    Central Processing Unit

   C
    Langage de programmation permettant d'interagir facilement avec le matériel.

   RISC
    Reduced Instruction Set Computer

   CISC
    Complex Instruction Set Computer

   x86
    Famille de microprocesseurs développée par intel_. Le 8086 est le premier processeur de cette famille. Ses successeurs (286, 386, Pentium, Centrino, Xeon, ...) sont restés compatibles avec lui tout en introduisant chacun de nouvelles instructions et de nouvelles fonctionnalités. Aujourd'hui, plusieurs fabricants développent des processeurs qui supportent le même langage machine que les processeurs de cette famille.

   Unix
    Système d'exploitation développé initialement par AT&T Bell Labs.

   gcc
    Compilateur pour la langage C développé par un groupe de volontaires qui est diffusé depuis http://gcc.gnu.org gcc est utilisé dans plusieurs systèmes d'exploitation de type Unix, comme MacOS, Linux ou FreeBSD. Il existe d'autres compilateurs C. Une liste non-exhaustive est maintenue sur http://en.wikipedia.org/wiki/List_of_compilers#C_compilers

   llvm
    Ensemble de compilateurs pour différents langages de programmation et différents processeurs développé par un groupe de volontaire. ``llvm`` est distribué depuis http://llvm.org/

   cpp
   préprocesseur
    Le préprocesseur C est un programme de manipulation de texte sur base de macros qui est utilisé avec le compilateur. Le préprocesseur de :term:`gcc` est http://gcc.gnu.org/onlinedocs/cpp/

   microprocesseur
   processeur
    Unité centrale de l'ordinateur qui exécute les instructions en langage machine et interagit avec la mémoire.

   CPU
    Central Processing Unit. Voir :term:`microprocesseur`

   stdin
    Entrée standard sur un système Unix (par défaut le clavier)

   stdout
    Sortie standard sur un système Unix (par défaut l'écran)

   stderr
    Sortie d'erreur standard sur un système Unix (par défaut l'écran)

   X11
    Interface graphique développée au MIT pour Unix. Voir https://en.wikipedia.org/wiki/X_Window_System

   Gnome
    Environnement graphique utilisé par de nombreuses distributions Linux. Voir https://en.wikipedia.org/wiki/GNOME

   shell
    Interpréteur de commandes sur un système Unix. `bash(1)`_ est l'interpréteur de commandes le plus utilisé de nos jours.

   bit
    Plus petite unité d'information. Par convention, un bit peut prendre les valeurs ``0`` et ``1``.

   nibble
    Un bloc de quatre bits consécutifs.

   byte
   octet
    Un bloc de huit bits consécutifs.

   BSD Unix
    Variante de Unix développée à l'Université de Californie à Berkeley.

   FreeBSD
    Variante de BSD Unix disponible depuis http://www.freebsd.org

   OpenBSD
    Variante de BSD Unix disponible depuis http://www.openbsd.org

   MacOS
    Système d'exploitation développé par Apple Inc. comprenant de nombreux composantes provenant de :term:`FreeBSD`.

   Minix
    Famille de noyaux de systèmes d'exploitation inspiré de :term:`Unix` développée notamment par :term:`Andrew Tanenbaum`. Voir http://www.minix3.org pour la dernière version de Minix.

   Linux
    Noyau de système d'exploitation compatible Unix développé initialement par Linus Torvalds.

   Solaris
    Système d'exploitation compatible Unix développé par Sun Microsystems et repris par Oracle. La version open-source, OpenSolaris, est disponible depuis http://www.opensolaris.org

   Application Programming Interface
   API
    Un API est généralement un ensemble de fonctions et de structures de données qui constitue l'interface entre deux composants logiciels qui doivent collaborer. Par exemple, l'API du noyau d'un système Unix est composée de ses appels systèmes. Ceux-ci sont décrits dans la section 2 des pages de manuel (voir `intro(2)`_).

   GNU is not Unix
   GNU
    GNU est un projet open-source de la Free Software Foundation qui a permis le développement d'un grand nombre d'utilitaires utilisés par les systèmes d'exploitation de la famille Unix actuellement.

   GNU/Linux
    Nom générique donné à un système d'exploitation utilisant les utilitaires :term:`GNU` notamment et le noyau :term:`Linux` .

   Andrew Tanenbaum
    Andrew Tanenbaum est professeur à la VU d'Amsterdam.

   Linus Torvalds
    Linus Torvalds est le créateur et le mainteneur principal du noyau :term:`Linux`.

   Aqua
    Aqua est une interface graphique spécifique à :term:`MacOS`. Voir https://en.wikipedia.org/wiki/Aqua_(user_interface)

   pipe
    Mécanisme de redirection des entrées-sorties permettant de relier la sortie standard d'un programme à l'entrée standard d'un autre pour créer des pipelines de traitement.

   assembleur
    Programme permettant de convertir un programme écrit en langage d'assemblage dans le langage machine correspondant à un processeur donné.

   warning
    Message d'avertissement émis par un compilateur C. Un :term:`warning` n'empêche pas la compilation et la génération du code objet. Cependant, la plupart des warnings indiquent un problème dans le programme compilé et il est nettement préférable de les supprimer du code.

   bit de poids fort
    Par convention, le bit le plus à gauche d'une séquence de n bits.

   bit de poids faible
    Par convention, bit le plus à droite d'une séquence de n bits.

   simple précision
    Représentation de nombre réels en virgule flottante (type ``float`` en C). La norme `IEEE754 <http://ieeexplore.ieee.org/xpl/mostRecentIssue.jsp?punumber=4610933>`_ définit le format de ces nombres sur 32 bits.

   double précision
    Représentation de nombre réels en virgule flottante (type ``double`` en C). La norme `IEEE754 <http://ieeexplore.ieee.org/xpl/mostRecentIssue.jsp?punumber=4610933>`_ définit le format de ces nombres sur 64 bits.

   buffer overflow
    Erreur dans laquelle un programme informatique cherche à stocker plus de données en mémoire que la capacité de la zone réservée en mémoire. Donne généralement lieu à des problèmes, parfois graves, de sécurité. https://en.wikipedia.org/wiki/Buffer_overflow

   garbage collector
    Algorithme permettant de libérer la mémoire qui n'est plus utilisée notamment dans des langages tels que Java

   pointeur
    Adresse d'une variable ou fonction en mémoire.

   adresse
    Position d'un donnée en mémoire.

   C99
    Standard international définissant le langage C [C99]_

   fichier header
    Fichier contenant des signatures de fonctions, des déclarations de types de données, des variables globales, permettant d'utiliser une librairie ou un API.

   fichier source
    Fichier contenant l'implémentation des fonctions définies dans le :term:`fichier header` correspondant,
    ainsi que de potentielles autres variables ou fonctions utiles.

   segmentation fault
    Erreur à l'exécution causée par un accès à une adresse mémoire non-autorisée pour le programme.

   NOT
   négation
    Opération binaire logique.

   AND
   conjonction logique
    Opération binaire logique.

   OR
   disjonction logique
    Opération binaire logique.

   XOR
   ou exclusif
    Opération binaire logique.

   libc
    Librairie C standard. Contient de nombreuses fonctions utilisables par les programmes écrits en langage C et décrites dans la troisième section des pages de manuel. Linux utilise la librairie GNU `glibc <http://www.gnu.org/software/libc/manual/>`_ qui contient de nombreuses extensions par rapport à la libraire standard.

   FSF
    Free Software Foundation, http://www.fsf.org

   portée
    Zone d'un programme dans laquelle une variable est déclarée.

   portée locale
    Une variable ayant une portée locale est accessible uniquement dans le bloc dans laquelle elle est définie.

   portée globale
        Une variable ayant une portée globale est accessible dans tout le programme.

   debugger
    Logiciel

   text
   segment text
    Partie de la mémoire d'un programme contenant les instructions en langage machine à exécuter.

   segment de données
    Partie de la mémoire comprenant les segments des données initialisées et non-initialisées


   segment des données initialisées
    Partie de la mémoire d'un programme contenant les données initialisées dans le code source du programme ainsi que les chaînes de caractères.

   segment des données non-initialisées
    Partie de la mémoire d'un programme contenant les données (tableaux notamment) qui sont déclarés mais pas explicitement initialisés dans le code source du programme.

   heap
   tas
    Partie de la mémoire d'un programme gérée par `malloc(3)`_ et `free(3)`_.

   stack
   pile
    Partie de la mémoire d'un programme contenant les variables locales et adresses de retour des fonctions durant leur exécution.

   memory leak
    Fuite de mémoire. Erreur concernant un programme qui a alloué de la mémoire avec `malloc(3)`_ et ne l'utilise plus sans avoir fait appel à  `free(3)`_

   processus
    Ensemble cohérent d'instructions utilisant une partie de la mémoire, initié par le système d'exploitation et exécuté sur un des processeurs du système. Le système d'exploitation libère les ressources qui lui sont allouées à la fin de son exécution.

   pid
   process identifier
    identifiant de processus. Sous Unix, chaque processus est identifié par un entier unique. Cet identifiant sert de clé d'accès à la :term:`table des processus`. Voir `getpid(2)`_ pour récupérer l'identifiant du processus courant.

   table des processus
    Table contenant les identifiants (:term:`pid`) de tous les processus qui s'exécutent à ce moment sur un système Unix. Outre les identifiants, cette table contient de nombreuses informations relatives à chaque :term:`processus`. Voir également :term:`/proc`

   /proc
    Sous Linux, représentation de l'information stockée dans la :term:`table des processus` sous la forme d'une arborescence directement accessible via les commandes du :term:`shell`. Voir `proc(5)`_

   signal
    mécanisme permettant la communication entre processus. Utilisé notamment pour arrêter un processus via la commande `kill(1)`_

   von Neumann
    Un des inventeurs des premiers ordinateurs. A défini l'architecture de base des premiers ordinateurs qui est maintenant connue comme le modèle de von Neumann [Krakowiak2011]_

   mémoire
    Dispositif électronique permettant de stocker

   SRAM
   static RAM
    Un des deux principaux types de mémoire. Dans une SRAM, l'information est mémorisée comme la présence ou l'absence d'un courant électrique. Les mémoires SRAM sont généralement assez rapides mais de faible capacité. Elles sont souvent utilisées pour construire des mémoires caches.

   DRAM
   dynamic RAM
    Un des deux principaux types de mémoire. Dans une DRAM, l'information est mémorisée comme la présence ou l'absence de charge dans un minuscule condensateur. Les mémoires DRAM sont plus lentes que les :term:`SRAM` mais ont une plus grande capacité.

   RAM
   Random Access Memory
    Mémoire à accès aléatoire. Mémoire permettant au processeur d'accéder à n'importe quelle donnée en connaissant son adresse. Voir :term:`DRAM` et :term:`SRAM`.


   registre
    Unité de mémoire intégrée au processeur. Les registres sont utilisés comme source ou destination pour la plupart des opérations effectuées par un processeur.

   hiérarchie de mémoire
    Ensemble des mémoires utilisées sur un ordinateur. Depuis les registres jusqu'à la mémoire virtuelle en passant par la mémoire centrale et les mémoires caches.

   mémoire cache
    Mémoire rapide de faible capacité. La mémoire cache peut stocker des données provenant de mémoires de plus grande capacité mais qui sont plus lentes, et exploite le :term:`principe de localité` en stockant de manière transparente les instructions et les données les plus récemment utilisées. Elle fait office d'interface entre le processeur et la mémoire principale et toutes les demandes d'accès à la mémoire principale passent par la mémoire cache, ce qui permet d'améliorer les performances de nombreux systèmes informatiques.

   eip
   pc
   compteur de programme
   instruction pointer
    Registre spécial du processeur qui contient en permanence l'adresse de l'instruction en cours d'exécution. Le contenu de ce registre est incrémenté après chaque instruction et modifié par les instructions de saut.

   makefile
    Fichier décrivant la façon dont `make(1)`_ doit compiler un programme.

   fichier
    Une séquence composée d'un nombre entier d'octets stockée sur un dispositif de stockage. Un fichier est identifié par son nom et sa position dans l'arborescence du système de fichiers.

   fichier objet
    Fichier résultat de la compilation d'une partie de programme. Ce fichier contient les instructions en langage machine à exécuter ainsi que les informations relatives aux différents symboles (variables, fonctions, ...) qui y sont définis.

   linker
    Editeur de liens. Partie du compilateur c permettant de combiner plusieurs fichiers objet en un exécutable.

   errno
    Variable globale mise à jour par certains appels systèmes et fonctions de la librairie standard en cas d'erreur. Voir `errno(3)`_

   loi de Moore
    Voir https://fr.wikipedia.org/wiki/Loi_de_Moore

   kHz
    Mesure de fréquence en milliers de répétitions par seconde.

   MHz
    Mesure de fréquence en millions de répétitions par seconde.

   GHz
    Mesure de fréquence en milliards de répétitions par seconde.

   MIPS
    Million d'instructions par seconde

   benchmark
    Ensemble de programmes permettant d'évaluer les performances d'un système informatique.

   multi-threadé
   multi-coeurs
    Processeur contenant plusieurs unités permettant d'exécuter simultanément des instructions de programmes différents.


   multithreadé
    Programme utilisant plusieurs threads.

   section critique
    Partie de programme ne pouvant pas être exécutée simultanément par deux threads différents.

   exclusion mutuelle
    Zone d'un programme multithreadé qui ne peut pas être exécutée par plus d'un thread à la fois.

   sûreté
   safety
    Propriété d'un programme informatique. Dans le problème de l'exclusion mutuelle, une propriété de sûreté est que deux threads ne seront jamais dans la même section critique.

   liveness
   vivacité
    Propriété d'un programme informatique. Dans le problème de l'exclusion mutuelle, une propriété de vivacité est qu'un thread qui souhaite entrer en section critique finira par y accéder.

   multitâche
   multitasking
    Capacité d'exécuter plusieurs programmes simultanément.

   contexte
    Structure de données maintenue pas le noyau du système d'exploitation qui contient toutes les informations nécessaires pour poursuivre l'exécution d'un programme.

   changement de contexte
    Passage de l'exécution du programme A au programme B.

   interruption
    Signal extérieur (horloge, opération d'entrée/sortie, ...) qui force le processeur à arrêter l'exécution du programme en cours pour exécuter une routine du système d'exploitation et traiter l'interruption.

   scheduler
    Ordonnanceur. Algorithme utilisé par le noyau du système d'exploitation pour sélectionner le prochain programme à exécuter après une interruption d'horloge ou un appel système bloquant.

   round-robin
    Voir https://fr.wikipedia.org/wiki/Round-robin_(informatique)

   livelock
    Voir https://en.wikipedia.org/wiki/Deadlock#Livelock

   opération atomique
    Opération ne pouvant être interrompue.

   deadlock
    Voir https://en.wikipedia.org/wiki/Deadlock

   mutex
    Primitive de synchronisation permettant d'empêcher que deux threads accèdent simultanément à une même section critique.

   appel système
    Fonction primitive fournie par le noyau du système d'exploitation et pouvant être appelée directement par les programmes applicatifs.

   appel système bloquant
    Appel système qui ne retourne par de résultat immédiat. Dans ce cas, le noyau du système d'exploitation sélectionne un autre processus via le :term:`scheduler` en attendant que le résultat de l'appel système soit disponible.

   sémaphore
    Primitive de synchronisation permettant notamment l'exclusion mutuelle. Voir notamment  [Downey2008]_

   thread-safe
    Une fonction est dite thread-safe si elle peut être simultanément exécutée sans contrainte par différents threads d'un même programme.

   loi de Amdahl
    Voir https://fr.wikipedia.org/wiki/Loi_d%27Amdahl

   static library
   librairie statique
    Une librairie est statiquement liée à un programme exécutable lorsque tout son code est intégré dans l'exécutable. Voir les arguments ``static`` dans `gcc(1)`_

   shared library
   librairie dynamique
   librairie partagée
    Lorsqu'un librairie est dynamiquement liée à un programme exécutable, le code de celui-ci ne contient pas les instructions de la librairie, mais celle-ci est automatiquement chargée lors de chaque exécution du programme. Cela permet d'avoir une seule copie de chaque librairie. C'est la solution utilisée par défaut sous Linux.

   descripteur de fichier
    Identifiant (entier) retourné par le noyau du système d'exploitation lors de l'ouverture d'un fichier par l'appel système `open(2)`_.

   répertoire
    Branche de l'arborescence du système de fichiers. Un répertoire contient un ou plusieurs fichiers.

   répertoire courant
    Répertoire dans lequel l'appel système `open(2)`_ cherchera à ouvrir les fichiers do

   offset pointer
    Position de la tête de lecture associée à un fichier ouvert.

   little endian
    Ordre dans lequel les octets correspondants à des mots de plusieurs octets sont stockés en mémoire. Voir https://fr.wikipedia.org/wiki/Boutisme#Little_endian

   big endian
    Ordre dans lequel les octets correspondants à des mots de plusieurs octets sont stockés en mémoire. Voir https://fr.wikipedia.org/wiki/Boutisme#Little_endian

   lien symbolique
    Unix supporte deux types de liens. Les liens durs créés par `ln(1)`_ et les liens symboliques créés par `ln(1)`_ avec l'argument ``-s``.

   appel système lent
    Un appel système lent est un appel système qui peut attendre un temps indéfini pour se terminer. Par exemple, l'appel `read(2)`_ sur l'entrée standard ne retournera de résultat que lorsque l'utilisateur aura pressé une touche sur le clavier.


   SSD
   Solid State Drive
    Système de stockage de données s'appuyant uniquement sur de la mémoire flash.

   root
    Racine de l'arborescence des fichiers mais aussi utilisateur ayant les privilèges les plus élevés sur un ordinateur utilisant Unix.

   userid
    Identifiant d'utilisateur. Sous Unix, un entier unique est associé à chaque utilisateur.

   Unicode
    Norme d'encodage de caractères supportant l'ensemble des langues écrites, voir notamment https://en.wikipedia.org/wiki/Unicode

   raspberry pi
    Systèmes informatiques développés par la Raspberry Pi Foundation, voir https://www.raspberrypi.org


   inode
    structure de données utilisée par le système de fichiers Unix pour représenter un fichier/répertoire

   principe de localité
    principe de fonctionnement de la mémoire indiquant que lorsqu'un programme accède à une adresse à un temps t, il accédera encore à des adresses proches dans les prochains instants


.. spelling::

   proc
   Tanenbaum
   Programming
   Aqua
   endian
   overflow
   Complex
   cpp
   deadlock
   debugger
   dynamic
   eip
   multithreadé
   Foundation
   garbage
   is
   not
   libc
   Torvalds
   little
   endian
   liveness
   llvm
   livelock
   Amdahl
   Inc
   Makefile
   memory
   leak
   multitasking
   multithreadé
   nibble
   pid
   Access
   Memory
   raspberry
   Reduced
   root
   scheduler
   fault
   shared
   library
   Solaris
   Sun
   Microsystems
   Solid
   static
   library
   stderr
   stdin
   stdout
   safety
   safe
   lab
   userid
   Pentium
   Centrino
   Xeon
   von
   Neumann
   makefile
   coeurs
   Labs
   Editeur
   Andrew
   l'API
   big
   Berkeley
   Raspberry
   process
   Random
   Linus
   Free
   collector
   pc
   Processing
   benchmark
   State
   Bell
   warning
   Moore
   d'Amsterdam
   threadé
   Ordonnanceur
   warning
   big
   benchmark
   threadé



