.. -*- coding: utf-8 -*-
.. Copyright |copy| 2012 by `Olivier Bonaventure <https://inl.info.ucl.ac.be/obo>`_, Christoph Paasch et Grégory Detal
.. Ce fichier est distribué sous une licence `creative commons <https://creativecommons.org/licenses/by-sa/3.0/>`_

.. spelling:word-list::

   tutorée
   tutorées
   Makefiles
   Makefile


Exercices
=========

Ce document comprend deux types d'exercices afin de permettre aux étudiants de mieux ancrer leur compréhension du langage C. Les premiers sont des questionnaires à choix multiples. Pour chaque module de cours, entre 5 et 10 questions à choix multiples seront proposées. Elles permettront à chaque étudiant(e) de valider sa compréhension de la matière. Ensuite, les étudiants seront invités à écrire de petits programmes, généralement en langage C. Ces programmes sont l'occasion de mettre en pratique les compétences acquises chaque semaine. La plupart des programmes ont un rôle formatif, ils permettront de guider la discussion avec les tuteurs durant les séances tutorées.


Première semaine
----------------

La matière couverte cette semaine correspond aux sections :

 - `Introduction <https://sites.uclouvain.be/SyllabusC/notes/Theorie/intro.html>`_
 - `Le langage C <https://sites.uclouvain.be/SyllabusC/notes/Theorie/C/intro-C.html>`_

En outre, vous devrez aussi lire les sections de la partie Outils qui sont relatives à

 - `Shell <https://sites.uclouvain.be/SyllabusC/notes/Outils/shell.html>`_
 - `Gestion des processus <https://sites.uclouvain.be/SyllabusC/notes/Outils/processus.html>`_

.. toctree::
   :maxdepth: 2

   mcq-ex/qcm-1
   Programmes/prog-1


Deuxième semaine
----------------

La matière couverte cette semaine correspond aux sections :

 - `Types de données <https://sites.uclouvain.be/SyllabusC/notes/Theorie/C/datatypes.html>`_ (la section relative aux manipulations de bits est pour information, elle ne sera pas couverte dans le cadre de ce cours)

En outre, vous devrez aussi lire les sections de la partie Outils qui sont relatives à

 - `GCC <https://sites.uclouvain.be/SyllabusC/notes/Outils/gcc.html>`_

.. toctree::
   :maxdepth: 2

   mcq-ex/qcm-2
   Programmes/prog-2


Troisième semaine
-----------------

La matière couverte cette semaine correspond aux sections :

  - `Déclarations <https://sites.uclouvain.be/SyllabusC/notes/Theorie/C/malloc.html#declarations>`_
  - `Unions et énumérations <https://sites.uclouvain.be/SyllabusC/notes/Theorie/C/malloc.html#unions-et-enumerations>`_
  - `Organisation de la mémoire <https://sites.uclouvain.be/SyllabusC/notes/Theorie/C/malloc.html#organisation-de-la-memoire>`_

En outre, vous devrez aussi lire les sections de la partie Outils qui sont relatives à

  - `GDB <https://sites.uclouvain.be/SyllabusC/notes/Outils/gdb.html>`_
  - `Valgrind <https://sites.uclouvain.be/SyllabusC/notes/Outils/valgrind.html>`_


.. toctree::
   :maxdepth: 2

   mcq-ex/qcm-3
   Programmes/prog-3


Quatrième semaine
-----------------

Durant les dernières semaines, vous avez appris les bases de l'écriture de fonctions en C.
L'objectif de cette semaine est de vous amener à être capable d'écrire des programmes
comprenant plusieurs fonctions. La matière couverte cette semaine correspond aux sections :

 - `Compléments de C <https://sites.uclouvain.be/SyllabusC/notes/Theorie/C/linker.html>`_

Trois exercices supplémentaires sont disponibles sur INGInious
pour tester votre compréhension de cette section:

    - https://inginious.info.ucl.ac.be/course/LEPL1503/modules_qcm_1
    - https://inginious.info.ucl.ac.be/course/LEPL1503/modules_qcm_2
    - https://inginious.info.ucl.ac.be/course/LEPL1503/modules_output

En outre, vous devrez aussi lire les sections de la partie Outils qui sont relatives à

 - `Introduction aux Makefiles <https://sites.uclouvain.be/SyllabusC/notes/Outils/make.html>`_
 - `CUnit: libraire de tests <https://sites.uclouvain.be/SyllabusC/notes/Outils/cunit.html>`_

Deux exercices supplémentaires sont disponibles sur INGInious
pour tester votre compréhension des Makefiles:

    - https://inginious.info.ucl.ac.be/course/LEPL1503/makefile
    - https://inginious.info.ucl.ac.be/course/LEPL1503/modules_makefile


.. toctree::
   :maxdepth: 2

   mcq-ex/qcm-4
   Programmes/prog-4


Cinquième semaine
-----------------


La matière de cette semaine porte sur l'utilisation du système de fichiers. Elle est décrite dans les sections  :

 - `Gestion des utilisateurs <https://sites.uclouvain.be/SyllabusC/notes/Theorie/Fichiers/fichiers.html#gestion-des-utilisateurs>`_
 - `Systèmes de fichiers <https://sites.uclouvain.be/SyllabusC/notes/Theorie/Fichiers/fichiers.html#systemes-de-fichiers>`_

En outre, vous devrez aussi lire les sections de la partie Outils qui sont relatives à

 - `Introduction à Git <https://sites.uclouvain.be/SyllabusC/notes/Outils/git.html>`_

`git(1)`_ sera très utilisé dans le cadre du projet. Après avoir lu l'explication sur `git(1)`_, vous êtes invités à testez vos connaissances via les exercices supplémentaires
proposés sur la `page INGInious du cours <https://inginious.info.ucl.ac.be/course/LEPL1503>`_,
ainsi que sur le `cours INGInious sur Git <https://inginious.org/course/git>`_.

.. toctree::
   :maxdepth: 2

   mcq-ex/qcm-5
   Programmes/prog-5


Sixième semaine
---------------

La matière couverte cette semaine correspond aux sections :


 - `Utilisation de plusieurs threads <https://sites.uclouvain.be/SyllabusC/notes/Theorie/Threads/threads.html>`_
 - `Communication entre threads <https://sites.uclouvain.be/SyllabusC/notes/Theorie/Threads/threads2.html#communication-entre-threads>`_
 - `Coordination entre threads <https://sites.uclouvain.be/SyllabusC/notes/Theorie/Threads/threads2.html#coordination-entre-threads>`_
 - `Les sémaphores <https://sites.uclouvain.be/SyllabusC/notes/Theorie/Threads/coordination.html>`_


.. toctree::
   :maxdepth: 2

   mcq-ex/qcm-6
   Programmes/prog-6


