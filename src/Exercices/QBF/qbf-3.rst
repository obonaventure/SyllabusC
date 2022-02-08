
Questions de bilan final
------------------------

#. Lisez attentivement le code suivant et essayez de deviner ce qui sera affiché
   sur la sortie standard. Ensuite, compilez le code en activant l'option 
   ``-fno-stack-protector`` de `gcc(1)`_ et exécutez le code. Avez-vous bien
   deviné ? Comment expliquez-vous les lignes affichées par le programme ?

	   .. code-block:: c

		 		#include <stdlib.h>
				#include <stdio.h>
				#include <string.h>
				#include <stdint.h>
                                
				int f() {
				        uint32_t zero = 0;
				        char a = 'a';
				        char b = 'b';
				        char str[8] = "Hello !";
				        printf("1) str = \"%s\",\t\tzero = %d,\ta = %c,\tb = %c\n", str, zero, a, b);
				        strcpy(str, "I love  sour!");
				        printf("2) str = \"%s\",\tzero = %d,\ta = %c,\tb = %c\n", str, zero, a, b);
				        a = 'a';
				        b = 'b';
				        printf("3) str = \"%s\",\tzero = %d,\ta = %c,\tb = %c\n", str, zero, a, b);
				        return 0;
				}

				int main(int argc, char *argv[]) {
				        return f();
				}

#. *Question ouverte*. Soit la structure ``pair_t`` suivante :

     .. code-block:: c

        typedef struct pair {
          int a;
          int b;
        } pair_t;


   Comment feriez-vous pour stocker dans les
   variables ``pair_t *p1, *p2`` les pointeurs vers deux instances de ``pair_t``
   allouées sur le heap de manière contiguë (i.e. les deux structures se suivent
   directement dans la mémoire) ?
