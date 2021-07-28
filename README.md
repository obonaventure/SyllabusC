Systèmes Informatiques
======================

[![Build Status](https://travis-ci.com/obonaventure/SyllabusC.svg?branch=master)](https://travis-ci.com/obonaventure/SyllabusC)


Ce repository git est destiné à contenir les notes et exercices du cours [LEPL1503 - Projet 3](https://uclouvain.be/cours-2021-lepl1503) (C, Unix/Linux, ...) donné en deuxième année aux étudiants ingénieurs civils et aux étudiants en sciences informatiques de l'[UCL](https://www.uclouvain.be). Il sera mis régulièrement à jour et les étudiants sont encouragés à soumettre des bugs reports, envoyer des patches ( notamment pour la section relative aux outils) ou proposer de nouvelles questions à choix multiples.

Ce cours est écrit en reStructuredText et est distribué sous une licence Creative Commons
https://creativecommons.org/licenses/by-sa/3.0/fr/


Compilation
-----------

Les notes sont écrites en [reStructuredText](http://docutils.sourceforge.net/rst.html) et peuvent être transformées en un document au format HTML, epub ou PDF en utilisant le logiciel [sphinx](https://sphinx-doc.org). Pour faciliter cette compilation, une configuration [Docker](https://www.docker.com/) est reprise dans le fichier [Dockerfile](./Dockerfile)
se trouvant à la racine du repository.

[Docker](https://www.docker.com) est un logiciel fonctionnant sur Linux, Windows et MacOS, qui permet d'automatiser et de faciliter la création de "containers",
qui sont des environnements virtuels encapsulés, semblables à des machines virtuelles
très légères. Pour installer [Docker](https://www.docker.com), suivez les instructions
reprises sur leur [page d'installation](https://docs.docker.com/engine/install/).

Vous êtes maintenant en mesure de compiler le projet sous différents formats (consultez le [Makefile](./Makefile) pour plus d'informations). Vous pouvez notamment le compiler au format HTML avec `make html`, au format epub avec `make epub` ou encore au format PDF avec `make latexpdf` pour créer les fichiers LaTeX à compiler à l'aide de pdflatex. Le projet compilé est alors accessible dans le répertoire `_build/nom_du_format`.

Finalement, lorsque que vous avez terminé de travailler sur le projet, vous pouvez exécuter la commande `vagrant destroy` pour supprimer toutes les traces de la machine virtuelle précédemment créée.

Intégration continue
--------------------

Le syllabus utilise [travis](https://travis-ci.com/) comme système d'intégration continue. Si vous soumettez une proposition de modification au syllabus, tout le syllabus sera recompilé pour vérifier si votre modification est correcte au niveau de la syntaxe et de l'orthographe. Pensez à mettre des commentaires dans vos pull-requests en expliquant la raison de vos modifications. Essayez également de regrouper vos modifications pour faciliter leur relecture avant une intégration. Vous pouvez accéder aux résultats des tests d'intégration continue via [https://travis-ci.com/obonaventure/SyllabusC](https://travis-ci.com/obonaventure/SyllabusC)
