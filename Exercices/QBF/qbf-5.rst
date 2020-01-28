Questions de bilan final
------------------------

Un système informatique est utilisé par 3 utilisateurs: ``quentin``, ``brigitte`` et ``françois``. Ils appartiennent à des groupes différents comme décrit ci-dessous.

.. code-block:: bash

   $ groups quentin
   quentin : quentin boys

   $ groups brigitte
   brigitte: brigitte girls sudo wheel

   $ groups françois
   françois: françois boys

#. ``quentin`` ouvre le fichier ``/shared_folder/petit_projet.c`` en utilisant les drapeaux ``O_CREAT | O_RDWR | O_TRUNC``, donne les permissions ``664``, l'associe au groupe ``boys`` et écrit le code de son projet dedans.

   #. Quelles sont les permissions que doit avoir ``/shared_folder`` pour que ``françois`` et ``brigitte`` puissent accéder au fichier ``petit_projet.c``?


   #. ``brigitte``, de son côté, lance ensuite les commandes suivantes.
   
      .. code-block:: bash

         $ sudo chown brigitte:girls /shared_folder/petit_projet.c
         $ chmod 660 /shared_folder/petit_projet.c

      ``quentin`` veut maintenant sauvegarder son travail avec l'appel système ``write(2)`` sur le `file descriptor` obtenu avec le ``open(2)`` précédent, et puis le ferme avec ``close(2)``. Que se passe-t-il?

   #. ``françois`` aimerait aussi rajouter son nom sur le projet et ouvre le fichier avec ``open(2)`` avec le drapeau ``O_WRONLY`` pour ensuite utiliser ``write(2)``. Que se passe-t-il?

   #. Finalement, ``quentin`` souhaite relire son code et fait appel à ``open(2)`` avec le drapeau ``O_RDONLY``, pour ensuite utiliser ``read(2)``. Que se passe-t-il?


#. Considérons le fichier ``/shared_folder/music.mp3`` avec les permissions ``644`` possédé par ``françois`` et associé au groupe ``boys``.

   #. Est-ce que ``quentin`` peut écouter le morceau? Qu'en est-il pour ``brigitte``? Quelles sont les permissions requises pour ``/shared_folder`` afin qu'ils y accèdent?

   #. Supposons maintenant que ``quentin`` et ``brigitte`` sont en train d'écouter le morceau MP3. Observant qu'il ne lui reste que peu d'espace disque disponible, ``françois`` supprime le fichier ``/shared_folder/music.mp3`` avec la commande ``rm``.

      #. Que se passe-t-il pour ``brigitte`` et ``quentin``?

      #. ``quentin`` ferme ensuite le fichier avec ``close(2)``. Qui a encore accès au fichier?

      #. ``brigitte`` ferme à son tour son `file descriptor`. Qui a encore accès au fichier?
