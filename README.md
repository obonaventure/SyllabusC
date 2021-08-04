LEPL1503 - Projet 3
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

La configuration reprise dans le [Dockerfile](./Dockerfile) permet de créer un container
contenant tous les packages nécessaires à la compilation du syllabus.
Pour faciliter encore plus sa création, un [script bash](./deploy.sh)
est fourni.
Pour déployer le container, il suffit d'exécuter le script
(**Attention**: l'utilisateur exécutant le script doit avoir les droits ``sudo``).
Les arguments de ligne de commande donnés au script définisse quel sera le comportement
du container une fois crée:

- Si aucun argument n'est donné, un terminal ``root`` sera ouvert sur le container.
Depuis ce terminal, il est possible de lancer la compilation du syllabus en un certain format, avec la commande ``make``.
Les formats les plus courants sont les suivants:
    - ``make html`` lance la compilation en HTML, pour former le site internet du syllabus,
    contenant les parties *Théorie*, *Exercices*, et *Outils*.
    - ``make epub`` lance la compilation en EPUB, format adapté à la lecture sur tablette. **Remarque**: seule les parties *Théorie* et *Outils* possèdent
    une version EPUB.
    - ``make latexpdf`` lance la compilation en LaTeX,
    puis produit une version PDF du syllabus à partir des fichiers LaTeX. **Remarque**:
    seule la partie *Théorie* possède une version LaTeX.
    - ``make lepl1503`` lance la compilation complète du syllabus,
    dans les formats HTML, EPUB, et LaTeX - PDF.

- Il est également possible de donner directement l'argument du format au script,
par exemple ``./deploy lepl1503``, pour que le container effectue automatiquement la compilation
au format désiré, puis soit supprimé.

Les fichiers étant partagés entre le container et la machine hôte, les fichiers
compilés seront automatiquement placés dans le dossier `web/notes`
à la racine du repository.

Intégration continue
--------------------

Le syllabus utilise [travis](https://travis-ci.com/) comme système d'intégration continue. Si vous soumettez une proposition de modification au syllabus, tout le syllabus sera recompilé pour vérifier si votre modification est correcte au niveau de la syntaxe et de l'orthographe. Pensez à mettre des commentaires dans vos pull-requests en expliquant la raison de vos modifications. Essayez également de regrouper vos modifications pour faciliter leur relecture avant une intégration. Vous pouvez accéder aux résultats des tests d'intégration continue via [https://travis-ci.com/obonaventure/SyllabusC](https://travis-ci.com/obonaventure/SyllabusC)
