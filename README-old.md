Systèmes Informatiques
======================

[![Build Status](https://travis-ci.com/UCL-INGI/SyllabusC.svg?branch=master)](https://travis-ci.com/UCL-INGI/SyllabusC)


Ce repository git est destiné à contenir les notes et exercices du cours [LEPL1503 - Projet 3](https://uclouvain.be/cours-2021-lepl1503) (C, Unix/Linux, ...) donné en deuxième année aux étudiants ingénieurs civils et aux étudiants en sciences informatiques de l'[UCL](https://www.uclouvain.be). Il sera mis régulièrement à jour et les étudiants sont encouragés à soumettre des bugs reports, envoyer des patches ( notamment pour la section relative aux outils) ou proposer de nouvelles questions à choix multiples.

Ce cours est écrit en reStructuredText et est distribué sous une licence Creative Commons
https://creativecommons.org/licenses/by-sa/3.0/fr/


Compilation
-----------

Les notes sont écrites en [reStructuredText](http://docutils.sourceforge.net/rst.html) et peuvent être transformées en un document au format HTML, epub ou PDF en utilisant le logiciel [sphinx](https://sphinx-doc.org). Pour faciliter cette compilation, une configuration [vagrant](https://www.vagrantup.com) est reprise dans le fichier [Vagrantfile](https://github.com/obonaventure/SyllabusC/tree/master/Vagrantfile) se trouvant à la racine du projet.  [Vagrant](https://www.vagrantup.com) est un logiciel fonctionnant sur Linux, Windows et MacOS qui permet d'automatiser et de faciliter la création de machines virtuelles supportées notamment par [Virtualbox](https://www.virtualbox.org).

Pour démarrer votre environnement [Vagrant](https://www.vagrantup.com), commencez par installer [Vagrant](https://www.vagrantup.com) et [Virtualbox](https://www.virtualbox.org). [Vagrant](https://www.vagrantup.com) utilise le [Vagrantfile](https://github.com/obonaventure/SyllabusC/tree/master/Vagrantfile) pour créer les machines virtuelles. Ce dernier marque le dossier racine du projet et décrit le type de machine ainsi que les dépendances logicielles nécessaires au projet.

Plutôt que de créer une machine virtuelle à partir de zéro, [Vagrant](https://www.vagrantup.com) utilise une image de base à partir de laquelle créer la nouvelle machine virtuelle. Dans notre cas, le projet est configuré pour utiliser l'image "hashicorp/precise32" via la ligne `config.vm.box = "hashicorp/precise32"` dans le [Vagrantfile](https://github.com/obonaventure/SyllabusC/tree/master/Vagrantfile). Si cette image n'est pas encore présente sur votre machine, elle sera automatiquement téléchargée lors du lancement de la machine virtuelle.

Pour démarrer votre environnement Vagrant, exécutez la commande `vagrant up` depuis le répertoire racine du projet. Cette commande télécharge toutes les dépendances nécessaires, démarre et configure la machine virtuelle. Lorsqu'elle termine, vous pouvez exécuter la commande `vagrant ssh` pour démarrer une session SSH avec la machine virtuelle nouvellement créée.

Cette machine virtuelle ne fournit pas d'interface graphique et vous serez donc contraints d'intéragir avec cette dernière en ligne de commande. Sur cette machine virtuelle, vous trouverez le répertoire `/vagrant` qui est en réalité un dossier partagé avec le répertoire racine du projet sur la machine host. [Vagrant](https://www.vagrantup.com) se charge de synchroniser automatiquement tous les changements à ce dossier depuis et vers la machine virtuelle. Vous n'êtes donc pas contraints de travailler sur le projet depuis le terminal à travers une session SSH. Vous pouvez très bien utiliser votre éditeur de texte favori sur votre machine host pour modifier n'importe quel fichier du projet. Les changements seront alors automatiquement synchronisés avec la machine virtuelle. Pour vous en convaincre, créez un nouveau fichier et vérifiez qu'il apparaît bien à la fois sur votre machine host et dans le répertoire `/vagrant` de la machine virtuelle.

Vous êtes maintenant en mesure de compiler le projet sous différents formats (consultez le [Makefile](https://github.com/obonaventure/SyllabusC/blob/master/Makefile) pour plus d'informations). Vous pouvez notamment le compiler au format HTML avec `make html`, au format epub avec `make epub` ou encore au format PDF avec `make latexpdf` pour créer les fichiers LaTeX à compiler à l'aide de pdflatex. Le projet compilé est alors accessible dans le répertoire `_build/nom_du_format`.

Finalement, lorsque que vous avez terminé de travailler sur le projet, vous pouvez exécuter la commande `vagrant destroy` pour supprimer toutes les traces de la machine virtuelle précédemment créée.

Intégration continue
--------------------

Le syllabus utilise [travis](https://travis-ci.com/) comme système d'intégration continue. Si vous soumettez une proposition de modification au syllabus, tout le syllabus sera recompilé pour vérifier si votre modification est correcte au niveau de la syntaxe et de l'orthographe. Pensez à mettre des commentaires dans vos pull-requests en expliquant la raison de vos modifications. Essayez également de regrouper vos modifications pour faciliter leur relecture avant une intégration. Vous pouvez accéder aux résultats des tests d'intégration continue via [https://travis-ci.com/UCL-INGI/SyllabusC](https://travis-ci.com/UCL-INGI/SyllabusC)
