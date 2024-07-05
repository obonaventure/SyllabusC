LEPL1503 - Projet 3
======================

[![Build Status](https://travis-ci.com/obonaventure/SyllabusC.svg?branch=master)](https://travis-ci.com/obonaventure/SyllabusC)

Ce repository git est destiné à contenir les notes et exercices du cours [LEPL1503 - Projet 3](https://uclouvain.be/cours-2021-lepl1503) (C, Unix/Linux, ...) donné en deuxième année aux étudiants ingénieurs civils et aux étudiants en sciences informatiques de l'[UCL](https://www.uclouvain.be). Il sera mis régulièrement à jour et les étudiants sont encouragés à soumettre des bugs reports, envoyer des patches ( notamment pour la section relative aux outils) ou proposer de nouvelles questions à choix multiples.

Ce cours est écrit en reStructuredText et est distribué sous une licence Creative Commons
https://creativecommons.org/licenses/by-sa/3.0/fr/


Compilation
-----------

Les notes sont écrites en [reStructuredText](http://docutils.sourceforge.net/rst.html) et peuvent être transformées en un document au format HTML, EPUB ou PDF en utilisant le logiciel [Sphinx](https://sphinx-doc.org) (**Attention**: la version 1.7.1 de [Sphinx](https://sphinx-doc.org) est utilisée, prendre une version plus récente empêche la compilation LaTeX de fonctionner). 


Intégration continue
--------------------

Le syllabus utilise [Travis CI](https://travis-ci.com/) comme système d'intégration continue. Si vous soumettez une proposition de modification au syllabus, tout le syllabus sera recompilé pour vérifier si votre modification est correcte.
Plus précisément, les vérifications suivantes sont effectuées:

- La syllabus entier est compilé aux formats PDF (Théorie uniquement),
EPUB (Théorie et Outils), et HTML (Théorie, Outils et Exercices) pour vérifier
la syntaxe et la cohérence des modifications apportées.
- L'orthographe est vérifiée sur les 3 parties.
- Les liens externes (URLs vers d'autres sites) sont vérifiés pour les 3 parties.

Vous pouvez vérifier en local si vos modifications passeront les tests,
en exécutant le script [verify.sh](./verify.sh).

Pensez à mettre des commentaires dans vos pull-requests en expliquant la raison de vos modifications. Essayez également de regrouper vos modifications pour faciliter leur relecture avant une intégration. Vous pouvez accéder aux résultats des tests d'intégration continue via [https://travis-ci.com/obonaventure/SyllabusC](https://travis-ci.com/obonaventure/SyllabusC).
