LEPL1503 - Projet 3
======================

[![Build Status](https://travis-ci.com/obonaventure/SyllabusC.svg?branch=master)](https://travis-ci.com/obonaventure/SyllabusC)


Ce repository git est destiné à contenir les notes et exercices du cours [LEPL1503 - Projet 3](https://uclouvain.be/cours-2021-lepl1503) (C, Unix/Linux, ...) donné en deuxième année aux étudiants ingénieurs civils et aux étudiants en sciences informatiques de l'[UCL](https://www.uclouvain.be). Il sera mis régulièrement à jour et les étudiants sont encouragés à soumettre des bugs reports, envoyer des patches ( notamment pour la section relative aux outils) ou proposer de nouvelles questions à choix multiples.

Ce cours est écrit en reStructuredText et est distribué sous une licence Creative Commons
https://creativecommons.org/licenses/by-sa/3.0/fr/


Compilation
-----------

Les notes sont écrites en [reStructuredText](http://docutils.sourceforge.net/rst.html) et peuvent être transformées en un document au format HTML, EPUB ou PDF en utilisant le logiciel [Sphinx](https://sphinx-doc.org) (**Attention**: la version 1.7.1 de [Sphinx](https://sphinx-doc.org) est utilisée, prendre une version plus récente empêche la compilation LaTeX de fonctionner). Pour faciliter cette compilation, une configuration [Docker](https://www.docker.com/) est reprise dans le fichier [Dockerfile](./Dockerfile)
se trouvant à la racine du repository.

[Docker](https://www.docker.com) est un logiciel fonctionnant sur Linux, Windows et MacOS, qui permet d'automatiser et de faciliter la création de "containers",
qui sont des environnements virtuels encapsulés, semblables à des machines virtuelles
très légères. Pour installer [Docker](https://www.docker.com), suivez les instructions
reprises sur leur [page d'installation](https://docs.docker.com/engine/install/).

La configuration reprise dans le [Dockerfile](./Dockerfile) permet de créer un container
contenant tous les packages nécessaires à la compilation du syllabus.
Pour faciliter encore plus son déploiement, deux scripts bash sont fournis,
[setup.sh](./setup.sh) et [build.sh](./build.sh),
qui vont déployer le container puis effectuer les opérations nécessaires
dans le container.
(**Attention**: l'exécution de ces scripts nécessite les droits `sudo`.)

Le premier, [setup.sh](./setup.sh), doit être lancé uniquement la première fois que le container est utilisé.
Il permet de récupérer un *token* qui sera nécessaire pour l'API de [Travis](https://travis-ci.com/),
le système d'intégration continue utilisé pour ce projet.
Pour ce faire, il appelle le script [get_token.sh](./scripts/get_token.sh)
dans le container.


Le second, [build.sh](./build.sh), peut être exécuté à chaque fois que le syllabus
doit être recompilé.
Il fait lui-même appel à un script Python ([compile.py](./scripts/compile.py)),
appelé dans le container, qui se déroule en trois étapes:
- Récupération depuis [Travis](https://travis-ci.com/) de l'information de la dernière
version du repository qui passe les tests d'intégration continue.
- Récupération de la version en question du repository depuis GitHub.
- Compilation du syllabus.

Il est possible de donner un argument en ligne de commande au script [build.sh](./build.sh),
qui sera passé à la commande `make` à l'intérieur du container, et
définit donc quelle compilation aura lieu dans le container.
Les arguments les plus courants sont les suivants:

- `html` lance la compilation en HTML, pour former le site internet du syllabus,
contenant les parties *Théorie*, *Exercices*, et *Outils*.
- `epub` lance la compilation en EPUB, format adapté à la lecture sur tablette. **Remarque**:
seule les parties *Théorie* et *Outils* possèdent une version EPUB.
- `latexpdf` lance la compilation en LaTeX,
puis produit une version PDF du syllabus à partir des fichiers LaTeX. **Remarque**:
seule la partie *Théorie* possède une version LaTeX.
- `lepl1503` lance la compilation complète du syllabus,
dans les formats HTML, EPUB, et LaTeX - PDF.
Cett cible de compilation est celle à utiliser
pour compiler le syllabus en entier. **Remarque**:
cette cible de compilation étant la première, elle se lancera également si
aucun argument n'est donné.

Les fichiers étant partagés entre le container et la machine hôte, les fichiers
compilés seront automatiquement placés dans le dossier `web/notes/`
à la racine du repository.
La page d'accueil du syllabus est le fichier
`web/notes/Index/html/index.html`.


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
