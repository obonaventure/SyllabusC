.. -*- coding: utf-8 -*-
.. Copyright |copy| 2012 by `Olivier Bonaventure <http://inl.info.ucl.ac.be/obo>`_  et Nicolas Houtain
.. Ce fichier est distribué sous une licence `creative commons <http://creativecommons.org/licenses/by-sa/3.0/>`_

.. _outils:gcc:

GCC
---

Le compilateur `gcc(1)`_ est un compilateur largement utilisé pour les programmes écrits en C.
Il permet de produire un fichier *exécutable*, qui pourra être exécuté pour effectuer ses opérations,
à partir des fichiers *source*, qui contiennent le programme écrit en C.
Les fichiers *source* ont en général l'extension ``.c``, alors que le fichier *exécutable*
n'a généralement pas d'extension (du moins dans le cadre de ce cours).

Soit un fichier *source* ``helloworld.c`` contenant le code C suivant:

.. literalinclude:: ./src/helloworld.c
   :encoding: utf-8
   :language: c

Pour compiler ce programme et produire l'exécutable ``prog``, il suffit d'utiliser `gcc(1)`_:

.. code-block:: bash

	$ gcc helloworld.c -o prog

Discutons de chacune des parties de cette commande:

	- ``gcc`` indique l'outil shell utilisé, ici `gcc(1)`_
	- ``helloworld.c`` indique le fichier source, en C
	- l'option ``-o`` permet de spécifier le nom du fichier produit, qui dans ce cas est le fichier exécutable
	- ``prog`` est le nom du fichier exécutable

On peut maintenant exécuter le programme ``prog``:

.. code-block:: bash

	$ ./prog
	Hello world !

Cette description basique de `gcc(1)`_ est suffisante pour le début de ce cours.
Pour savoir comment compiler des programmes constitués de plusieurs fichiers sources,
veuillez vous référer à la partie
`De grands programmes en C <../../Theorie/html/C/linker.html#de-grands-programmes-en-c>`_
de la partie Théorie du syllabus.

Compléments
^^^^^^^^^^^

De manière technique, le travail du compilateur peut être découpé selon 4 étapes distinctes:
	* Appel du préprocesseur ``cpp``: Supprime les commentaires, inclus les `#include` et évalue les macros
	* Appel du compilateur	 ``cc1``: Génère un fichier assembleur (.as)
	* Appel de l'assembleur	 ``as``	: Génère le fichier objet (.o)
	* Appel du de l'éditeur de liens ``ld``	: Génère l'exécutable


Différentes options peuvent être utilisé avec gcc :

	* -E		: Appelle uniquement le préprocesseur
	* -S		: Appelle uniquement le préprocesseur et le compilateur
	* -C 		: Appelle le préprocesseur, le compilateur et l'assembleur

	* -o nom	: Détermine le nom du fichier de sortie
	* -g		: Option nécessaire pour générer les informations symboliques de débogage avec gdb
	* -On		: Indique le niveau d'optimisation où n est compris entre 0 et 3
	* -Wall		: Active tout les warnings
	* -Werror 	: Considère tout les warnings comme des erreurs
	* --help    : Messages d'aide

Notons que les trois premières options ne présentent pas d'intérêt pour ce cours.


.. spelling::

   help







