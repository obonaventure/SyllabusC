
Questions de bilan final
------------------------

#. La structure suivante ``foo_t`` est définie de façon à ce qu'elle contienne un ``char`` suivi d'un entier. D'après vous combien de bytes occupe cette structure en mémoire ? Vérifiez ce que vous pensiez en utilisant ``sizeof``. (bonus: expliquez vos résultats.)

        .. code-block:: c

                struct foo_t {
                        char a;
                        int b;
                };


#. Considérez le programme suivant.

        .. literalinclude:: ../Programmes/s2_qbf.c
                :encoding: utf-8
                :language: c

      * Sans exécuter le programme, essayez de comprendre son fonctionnement. En particulier, quelles seront les adresses affichées à chaque tour de boucle?
      * Compilez le programme et exécutez le. Expliquez sa sortie et comparez avec vos attentes.
      * (Bonus) Expliquez les valeurs affichées lors de l'exécution de la dernière boucle.
