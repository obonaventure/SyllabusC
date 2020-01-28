

Question de bilan final
=======================

Considérez le programme suivant.

	.. literalinclude:: src/s4_qbf.c
                :encoding: utf-8
                :language: c

* Dessinez le schéma de l'organisation mémoire du programme. Identifiez dessus où se trouvent toutes les variables présentes dans le programme.
* Pour chaque ligne du programme, indiquez quelles zones mémoires sont accédées et leur contenu après exécution.

.. only:: staff

	Cette question est importante à réaliser, n'hésitez pas à y passer une bonne demi-heure. Insistez pour commencer à dessiner le schema au tableau et que les étudiants interagissent directement dessus.

	Dans la section code: f, main.
	Dans la section initialisée: cours et 97850 (insistez sur ce dernier!).
	Dans la section heap: la zone mémoire pointée par tab.
	Dans la stack (à des niveaux différents): d, tab, res, c, x. Notez que les arguments des fonctions sont aussi mis sur la stack (y compris a, b, argc et argv), mais insistez là-dessus lors de l'exécution du programme.
	Dans la zone param/env: le contenu de argv.
