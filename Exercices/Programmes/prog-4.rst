.. -*- coding: utf-8 -*-
.. Copyright |copy| 2012, 2020 by `Olivier Bonaventure <http://inl.info.ucl.ac.be/obo>`_, Christoph Paasch et Grégory Detal
.. Ce fichier est distribué sous une licence `creative commons <http://creativecommons.org/licenses/by-sa/3.0/>`_

Exercices INGINIOUS
===================

Deux sortes d'exercices INGINIOUS vous sont proposés durant cette semaine. Les premiers portent sur les structures chaînées car ces structures de données permettent de bien vérifier la compréhension des pointeurs en C.

 - https://inginious.info.ucl.ac.be/course/LEPL1503/s4_simple_stack
 - https://inginious.info.ucl.ac.be/course/LEPL1503/s4_cmp_func
 - https://inginious.info.ucl.ac.be/course/LEPL1503/s4_linked_structs
 - https://inginious.info.ucl.ac.be/course/LEPL1503/s4_advanced_queue
 - https://inginious.info.ucl.ac.be/course/LEPL1503/s4_order_relation_linked_list


Lorsque l'on écrit des programmes en C ou dans un autre langage, il est important de tester
le bon fonctionnement de toutes les fonctions du programme pour éviter des erreurs et autres
bugs difficiles à corriger. L'idéal est de commencer par écrire les tests qui valident le bon
fonctionnement de chaque fonction *avant* d'écrire cette fonction. Plusieurs librairies peuvent vous
aider à écrire de tels tests. `CUnit <../../../Outils/html/cunit.html>`_ est l'une d'entre elles. 
Prenez le temps de lire le chapitre
qui lui est consacré dans le syllabus.

Pour démontrer votre bonne utilisation de `make(1)`_ et CUnit, reprenez le programme que vous
avez écrit pour l'exercice `test <https://inginious.info.ucl.ac.be/course/LEPL1503/commandetest>`_
,
divisez-le en plusieurs fichiers, ajoutez-y des tests unitaires pour chaque fonction et
utilisez `make(1)`_ pour automatiser le tout. Si vous voulez allez plus loin, essayez d'utiliser
la librairie `getopt(3)`_ pour traiter les arguments reçus en ligne de commande.


Exercices
=========


#. Un programmeur propose deux fonctions différentes pour calculer la somme des éléments d'un tableau à deux dimensions. Intégrez ces fonctions dans un programme afin d'en mesurer les performances avec `gettimeofday(2)`_. Quelle est la variante la plus rapide et pourquoi ?

	.. literalinclude:: src/sumarray.c
		:encoding: utf-8
		:language: c
		:start-after: ///AAA
		:end-before: ///BBB



