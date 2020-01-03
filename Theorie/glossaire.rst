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
    Ensemble de compilateurs pour différents langages de programmation et différents processeurs développé par un groupe de volontaire. llvm est distrubé depuis http://llvm.org/

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

   segmentation fault
    Erreur à l'exécution à compléter

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
    Une variable ayant une portée locale est accessible uniquement dans le bloc dans lequelle elle est définie.

   portée globale
        Une variable ayant une portée globale est accessible dans tout le programme.

   debugger
    Logiciel

   text
   segment text
    Partie de la mémoire d'un programme contenant les instructions en langage machine à exécuter.

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
    Un des inventaires des premiers ordinateurs. A défini l'architecture de base des premiers ordinateurs qui est maintenant connue comme le modèle de von Neumann [Krakowiak2011]_

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
    à compléter

   fichier
    à compléter

   fichier objet
    à compléter

   linker
    à compléter

   errno
    à compléter

   loi de Moore
    à compléter

   kHz
    à compléter

   MHz
    à compléter

   GHz
    à compléter

   MIPS
    Million d'instructions par seconde

   benchmark
    à compléter

   multi-coeurs
    à compléter

   multithreadé
    Programme utilisant plusieurs threads.

   section critique
    Partie de programme ne pouvant pas être exécutée simultanément par deux threads différents.

   exclusion mutuelle
    à compléter

   sûreté
   safety
    à compléter

   liveness
   vivacité
    à compléter

   multitâche
   multitasking
    à compléter

   contexte
    à compléter

   changement de contexte
    à compléter

   interruption
    à compléter

   scheduler
    à compléter

   round-robin
    à compléter

   livelock
    à compléter

   opération atomique
    à compléter

   deadlock
    à compléter

   mutex
    à compléter

   appel système
    à compléter

   appel système bloquant
    à compléter

   sémaphore
    à compléter

   thread-safe
    à compléter

   loi de Amdahl
    à compléter

   static library
   librairie statique
    à compléter

   shared library
   librairie dynamique
   librairie partagée
    à compléter

   descripteur de fichier
    à compléter

   répertoire
    à compléter

   répertoire courant
    à compléter

   offset pointer
    à compléter

   little endian
    à compléter

   big endian
    à compléter

   lien symbolique
    à compléter

   appel système lent
    à compléter


   SSD
   Solid State Drive
    Système de stockage de données s'appuyant uniquement sur de la mémoire flash.

   root
    à compléter

   userid
    à compléter

   Unicode
    Norme d'encodage de caractères supportant l'ensemble des langues écrites, voir notamment https://en.wikipedia.org/wiki/Unicode

   raspberry pi
    Systèmes informatiques développés par la Raspberry Pi Foundation, voir https://www.raspberrypi.org

   raspbian
    Variante de GNU/Linux disponible depuis https://www.raspbian.org
