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
Pour faciliter encore plus sa création, un [script bash](./build.sh) est fourni.
Pour déployer le container, il suffit d'exécuter le script avec la commande
`./build.sh`
(**Attention**: l'utilisateur exécutant le script doit avoir les droits `sudo`).
L'argument de ligne de commande donnés au script sera passé
à la commande `make` à l'intérieur du container, et
définit donc quelle compilation aura lieu dans le container.
Les arguments les plus utiles sont les suivants:

    - `html` lance la compilation en HTML, pour former le site internet du syllabus,
    contenant les parties *Théorie*, *Exercices*, et *Outils*.
    - `epub` lance la compilation en EPUB, format adapté à la lecture sur tablette. **Remarque**: seule les parties *Théorie* et *Outils* possèdent
    une version EPUB.
    - `latexpdf` lance la compilation en LaTeX,
    puis produit une version PDF du syllabus à partir des fichiers LaTeX. **Remarque**:
    seule la partie *Théorie* possède une version LaTeX.
    - `lepl1503` lance la compilation complète du syllabus,
    dans les formats HTML, EPUB, et LaTeX - PDF. **Remarque**:
    cette cible de compilation étant la première, elle se lancera également si
    aucun argument n'est donné.

Les fichiers étant partagés entre le container et la machine hôte, les fichiers
compilés seront automatiquement placés dans le dossier `web/notes`
à la racine du repository.
La page d'accueil du syllabus est le fichier
`web/notes/Index/html/index.html`.

Intégration continue
--------------------

Le syllabus utilise [travis](https://travis-ci.com/) comme système d'intégration continue. Si vous soumettez une proposition de modification au syllabus, tout le syllabus sera recompilé pour vérifier si votre modification est correcte au niveau de la syntaxe et de l'orthographe. Pensez à mettre des commentaires dans vos pull-requests en expliquant la raison de vos modifications. Essayez également de regrouper vos modifications pour faciliter leur relecture avant une intégration. Vous pouvez accéder aux résultats des tests d'intégration continue via [https://travis-ci.com/obonaventure/SyllabusC](https://travis-ci.com/obonaventure/SyllabusC)
