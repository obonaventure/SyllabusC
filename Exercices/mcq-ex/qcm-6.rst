.. -*- coding: utf-8 -*-
.. Copyright |copy| 2012,2020 by `Olivier Bonaventure <http://inl.info.ucl.ac.be/obo>`_, Christoph Paasch et Grégory Detal
.. Ce fichier est distribué sous une licence `creative commons <http://creativecommons.org/licenses/by-sa/3.0/>`_


Questions à choix multiples 
===========================

.. spelling::

   safe
   castée

:task_id: lepl1503-6




Question 1. Utilisation de `pthread_create(3)`_
------------------------------------------------


.. question:: pthread_create 
   :nb_prop: 3 
   :nb_pos: 1 


   La fonction `pthread_create(3)`_ permet de créer un thread. Parmi les fragments de code ci-dessous, un seul crée correctement un thread qui appelle la fonction ``f`` en lui passant la chaîne de caractères ``s`` comme argument. Lequel ?

   .. positive::

      .. code-block:: c 

         void * f( void * param) {
          // incomplet 
          return NULL;
         }

         int main (int argc, char *argv[])  {

           pthread_t t;
           int err;
           char *s;
           err=pthread_create(&t,NULL,&(f),(void *) s);
         }


   .. negative::

      .. code-block:: c 

         void * f (void * param) {
          // incomplet 
          return NULL;
         }

         int main (int argc, char *argv[])  {

           pthread_t t;
           int err;
           char *s;
           err=pthread_create(&t,NULL,&(f),(void *) &s);
         }

      .. comment:: Ce fragment contient une erreur. La fonction ``f`` a la bonne signature, mais le dernier argument à `pthread_create(3)`_ doit être de type ``void *``, or ``s`` est un ``char *`` et donc ce dernier argument doit être ``(void *) s``. 

   .. negative::

      .. code-block:: c 

         void f(void * param) {
          // incomplet 
          return NULL;
         }

         int main (int argc, char *argv[])  {

          pthread_t *t;
          int err;
          char *s;
          err=pthread_create(t,NULL,*f,(void *) *s);
         }

      .. comment:: Ce fragment contient plusieurs erreurs. La fonction ``f`` n'a pas la bonne signature (d'ailleurs ``return NULL;`` pour une fonction ``void`` est incorrect). Ensuite, l'appel à `pthread_create(3)`_ doit prendre comme premier argument l'adresse vers une structure de type ``pthread_t`` qui est stockée en mémoire. Ce n'est pas le cas ici. Les troisième et quatrième arguments sont également incorrects.

   .. negative::

      .. code-block:: c


         void *f(void ** param) {
          // incomplet
          return NULL;
         }

         int main (int argc, char *argv[])  {

           pthread_t t;
           int err;
           char s;
           err=pthread_create(&t,NULL,&(f),(void *) s);
         }

      .. comment:: Dans ce fragment de code, la signature de la fonction ``f`` ainsi que l'appel à `pthread_create(3)`_ sont incorrects.



Question 2. Passage d'arguments à un thread
-------------------------------------------

Considérons un thread qui a pour objectif de convertir une fraction en un nombre en virgule flottante. Ce n'est pas une bonne utilisation de threads puisque le calcul à effectuer est très simple, mais cela nous permettra de voir comment un thread peut recevoir des arguments directement. En dehors des threads, cette fonction de conversion pourrait s'écrire :

.. code-block:: c

   struct fraction {
     int num;
     int denum;
   };

   typedef struct fraction Fraction_t;

   float tofloat(Fraction_t t) {
     return (float) t.num/ (float) t.denum;
   }

.. question:: argthread
   :nb_prop: 3
   :nb_pos: 1

   Parmi les programmes ci-dessous, un seul calcule correctement la valeur attendue (le test des valeurs de retour des fonctions n'est pas présenté pour garder le code concis). Lequel ?


   .. positive::


      .. code-block:: c

         void *mythread(void * param) {
          Fraction_t *f=(Fraction_t *) param;
          float *r=(float *)malloc(sizeof(float));
          *r=(float) f->num/ (float) f->denum;
          return((void *) r);
         }

         int main (int argc, char *argv[])  {

          pthread_t t;
          Fraction_t f;
          f.num=1;
          f.denum=3;
          float *r;
          int err;

          err=pthread_create(&t,NULL,&mythread,&(f));

          err=pthread_join(t,(void **) &r);

         }


   .. negative::

      .. code-block:: c

         void *mythread(void * param) {
           Fraction_t f= *param;
           float r;
           r=(float) f.num/ (float) f.denum;
           return((void *) &r);
         }

         int main (int argc, char *argv[])  {

           pthread_t t;
           Fraction_t f;
           f.num=1;
           f.denum=3;
           float r;
           int err;

           err=pthread_create(&t,NULL,&mythread,&(f));

           err=pthread_join(t,(void **) &r);

         }

      .. comment:: La fonction ``mythread``  est incorrect. L'initialisation de ``f`` ne fonctionne pas et en plus le résultat de la fonction est une variable locale (``r``) qui disparaît après son exécution. L'adresse de cette variable, même en étant castée en ``void *`` ne peut pas être retournée à la fonction ``main``.

   .. negative::

      .. code-block:: c


         void *mythread(void * param) {
           Fraction_t *t=(Fraction_t *) param;
           float *r=(float *)malloc(sizeof(float));
           *r=(float) t->num/ (float) t->denum;
           return((void *) r);
         }

         int main (int argc, char *argv[])  {

           pthread_t t;
           Fraction_t f;
           f.num=1;
           f.denum=3;
           float r;
           int err;

           err=pthread_create(&t,NULL,&mythread,&f);
           r=pthread_join(t,NULL);

         }

      .. comment:: Dans cette variable, l'appel à `pthread_join(3)`_ est incorrect.

   .. negative::

      .. code-block:: c

         float mythread(Fraction_t param) {
           float *r=(float *)malloc(sizeof(float));
           *r=(float) param->num/ (float) param->denum;
           return(r);
         }

         int main (int argc, char *argv[])  {
           pthread_t t;
           Fraction_t f;
           f.num=1;
           f.denum=3;
           printf("%f \n",tofloat(f));
           float *r;
           int err;

           err=pthread_create(&t,NULL,&mythread,&(f));

           err=pthread_join(t,(void *) &r);
         }

      .. comment:: Cette variante contient deux erreurs. La première est le prototype de la fonction ``mythread``. Celle-ci doit obligatoirement être de type ``void * fct(void * param)``, il n'est pas possible d'utiliser un autre prototype. Ensuite, l'appel à `pthread_join(3)`_ est incorrect puisque le deuxième argument de `pthread_join(3)`_ doit être de type ``void **`` et non ``void *``.



Question 3. Initialisation de mutex
-----------------------------------

.. question:: mutexinit
   :nb_prop: 3
   :nb_pos: 1

   Avant de pouvoir utiliser un mutex POSIX, il est nécessaire de déclarer la structure correspondante et initialiser le mutex. Parmi les fragments de code ci-dessous, lequel est celui qui déclare et initialise correctement un mutex ?

   .. positive::

      .. code-block:: c

        pthread_mutex_t mutex;
        pthread_mutexattr_t attr;

        err= pthread_mutexattr_init(&attr);
        if(err!=0)
          error(err,"pthread_mutexattr_init");

        err=pthread_mutex_init( &mutex, &attr);
        if(err!=0)
          error(err,"pthread_mutex_init");

      .. comment::

         Notez que dans ce cas, le mutex est initialisé avec les attributs par défaut.


   .. positive::

      .. code-block:: c

         pthread_mutex_t mutex;

         err=pthread_mutex_init( &mutex, NULL);
         if(err!=0)
           error(err,"pthread_mutex_init");

      .. comment::

         Notez que dans ce cas, le mutex est initialisé avec les attributs par défaut.

   .. negative::


      .. code-block:: c

         pthread_mutex_t mutex;
         pthread_mutexattr_t attr;

         err= pthread_mutexattr_init(attr);
         if(err!=0)
           error(err,"pthread_mutexattr_init");

         err=pthread_mutex_init(mutex, attr);
         if(err!=0)
           error(err,"pthread_mutex_init");

      .. comment:: Tant `pthread_mutexattr_init(3posix)`_ que `pthread_mutex_init(3posix)`_ prennent comme arguments un *pointeur* vers une structure de type ``pthread_mutex_t``. Ces deux fonctions modifient le contenu de cette structure et doivent donc en recevoir l'adresse comme argument.


   .. negative::

      .. code-block:: c

         pthread_mutex_t mutex;
         pthread_mutexattr_t attr;

         err= pthread_mutexattr_init(&attr);
         if(err!=0)
           error(err,"pthread_mutexattr_init");

         err=pthread_mutex_init(&mutex, attr);
         if(err!=0)
           error(err,"pthread_mutex_init");

      .. comment:: Tant `pthread_mutexattr_init(3posix)`_ que `pthread_mutex_init(3posix)`_ prennent comme arguments un *pointeur* vers une structure de type ``pthread_mutex_t``. Ces deux fonctions modifient le contenu de cette structure et doivent donc en recevoir l'adresse comme argument.


   .. negative::

      .. code-block:: c

         pthread_mutex_t *mutex;
         pthread_mutexattr_t *attr;

         err= pthread_mutexattr_init(attr);
         if(err!=0)
           error(err,"pthread_attr_init");

         err=pthread_mutex_init(mutex, attr);
         if(err!=0)
           error(err,"pthread_mutex_init");

      .. comment:: Tant `pthread_mutexattr_init(3posix)`_ que `pthread_mutex_init(3posix)`_ prennent comme arguments un *pointeur* vers une structure de type ``pthread_mutex_t``. La mémoire permettant de stocker ces deux structures doit avoir été réservée en utilisant `malloc(3)`_ avant de faire appel à ces deux fonctions.



Question 4. Utilisation de `pthread_mutex_lock(3posix)`_ et `pthread_mutex_unlock(3posix)`_
-------------------------------------------------------------------------------------------

.. question:: pthread_mutex_lock
   :nb_prop: 3
   :nb_pos: 1

   Un programme utilisant plusieurs threads doit mettre à jour une variable globale partagée entre tous les threads. Pour cela, le développeur écrit une fonction ``update`` qui prend comme arguments la variable à mettre à jour et le mutex qui y est associé. Parmi les extraits ci-dessous, lequel permet de mettre à jour la variable sans risque de contention entre les threads qui y accèdent ?

   .. positive::


      .. code-block:: c

         void update(int * val, pthread_mutex_t * mutex) {

         err=pthread_mutex_lock(mutex);
         if(err!=0)
           error(err,"pthread_mutex_lock");

         // mise à jour de la variable globale

         err=pthread_mutex_unlock(mutex);
         if(err!=0)
           error(err,"pthread_mutex_unlock");

         }


   .. negative::


      .. code-block:: c

         void update(int * val, pthread_mutex_t * mutex) {

         err=pthread_mutex_unlock(mutex);
         if(err!=0)
           error(err,"pthread_mutex_unlock");

         // mise à jour de la variable globale

         err=pthread_mutex_lock(mutex);
         if(err!=0)
           error(err,"pthread_mutex_lock");

         }

      .. comment:: Ce code est incorrect. Un mutex s'utilise en faisant d'abord ``pthread_mutex_lock`` et ensuite ``pthread_mutex_unlock``.

   .. negative::

      .. code-block:: c

         void update(int val, pthread_mutex_t mutex) {

         err=pthread_mutex_lock(mutex);
         if(err!=0)
           error(err,"pthread_mutex_lock");

         // mise à jour de la variable globale

         err=pthread_mutex_unlock(mutex);
         if(err!=0)
           error(err,"pthread_mutex_unlock");

         }

      .. comment:: L'utilisation de cette fonction implique que la structure ``pthread_mutex_t`` doit être copiée sur le stack avant de pouvoir être utilisée par la fonction. Cette solution ne peut fonctionner car la structure de données qui contient toute l'information relative à un mutex et placée à un endroit donné en mémoire et ne peut pas être copiée.


   .. negative::

      .. code-block:: c

         void update(int * val, pthread_mutex_t mutex) {

         err=pthread_mutex_lock(&mutex);
         if(err!=0)
           error(err,"pthread_mutex_lock");

         // mise à jour de la variable globale

         err=pthread_mutex_unlock(&mutex);
         if(err!=0)
           error(err,"pthread_mutex_unlock");

         }

      .. comment:: L'utilisation de cette fonction implique que la structure ``pthread_mutex_t`` doit être copiée sur le stack avant de pouvoir être utilisée par la fonction. Cette solution ne peut fonctionner car la structure de données qui contient toute l'information relative à un mutex et placée à un endroit donné en mémoire et ne peut pas être copiée.



Question 5. Utilisation de plusieurs mutex
------------------------------------------



Dans certains programmes, il est nécessaire de définir plusieurs mutex qui sont utilisés par différents threads pour gérer l'accès à des variables partagées. Considérons un programme qui utilise trois variables globales et est découpé en plusieurs threads.

.. code-block:: c

   long a=5;   // variable globale partagée
   long b=7;   // variable globale partagée
   long c=9;   // variable globale partagée

   pthread_mutex_t x; // variable globale associée à a
   pthread_mutex_t y; // variable globale associée à b
   pthread_mutex_t z; // variable globale associée à c


   void update(int * val1, int * val2, pthread_mutex_t * mutex1, pthread_mutex_t * mutex2) {

     err=pthread_mutex_lock(mutex1);
     if(err!=0)
       error(err,"pthread_mutex_lock");
     err=pthread_mutex_lock(mutex2);
     if(err!=0)
       error(err,"pthread_mutex_lock");

      // mise à jour val1
      // mise à jour val2

     err=pthread_mutex_unlock(mutex1);
     if(err!=0)
       error(err,"pthread_mutex_unlock");

     err=pthread_mutex_unlock(mutex2);
     if(err!=0)
       error(err,"pthread_mutex_unlock");

   }

.. question:: plusieursmutex
   :nb_prop: 3
   :nb_pos: 1

   Ce programme utilise plusieurs threads qui modifient les variables ``a``, ``b`` et ``c``. Parmi les fragments de code ci-dessous qui utilisent plusieurs threads, un seul est correct. Lequel ?

   .. positive::


      .. code-block:: c

         // thread A

         update(&a,&b,&x,&y);
         update(&a,&c,&x,&z);

         // thread B

         update(&b,&c,&y,&z);
         update(&a,&c,&x,&z);


   .. positive::

      .. code-block:: c

         // thread A

         update(&a,&b,&x,&y);
         update(&b,&c,&y,&z);

         // thread B

         update(&b,&c,&y,&z);
         update(&a,&c,&x,&z);


   .. negative::


      .. code-block:: c

         // thread A

         update(&a,&b,&x,&y);
         update(&c,&a,&z,&x);

         // thread B

         update(&b,&c,&y,&z);
         update(&a,&c,&x,&z);

      .. comment:: Lorsqu'un thread utilise plusieurs ressources protégées par un mutex, il est important que les accès à ces mutex se fasse chaque fois dans le même ordre. Dans cet exemple, il faut toujours accéder à ``x`` puis à ``y`` puis à ``z`` (ou un autre ordre). Accéder à ``z``  puis à ``x`` dans le thread A et à ``x`` puis à ``z`` dans le thread B est une source de deadlocks potentiels.

   .. negative::

      .. code-block:: c

         // thread A

         update(&a,&b,&x,&y);
         update(&a,&c,&x,&z);

         // thread B

         update(&b,&c,&y,&z);
         update(&c,&a,&z,&x);

      .. comment:: Lorsqu'un thread utilise plusieurs ressources protégées par un mutex, il est important que les accès à ces mutex se fasse chaque fois dans le même ordre. Dans cet exemple, il faut toujours accéder à ``x`` puis à ``y`` puis à ``z`` (ou un autre ordre). Accéder à ``z``  puis à ``x`` dans le thread B et à ``x`` puis à ``z`` dans le thread A est une source de deadlocks potentiels.

   .. negative::

      .. code-block:: c

         // thread A

         update(&a,&b,&x,&y);
         update(&a,&b,&x,&y);

         // thread B

         update(&b,&a,&y,&x);
         update(&a,&c,&x,&z);

      .. comment:: Lorsqu'un thread utilise plusieurs ressources protégées par un mutex, il est important que les accès à ces mutex se fasse chaque fois dans le même ordre. Dans cet exemple, il faut toujours accéder à ``x`` puis à ``y`` puis à ``z`` (ou un autre ordre). Accéder à ``a``  puis à ``y`` dans le thread A et à ``y`` puis à ``x`` dans le thread B est une source de deadlocks potentiels.




Question 6. Utilisation des sémaphores
--------------------------------------

.. question:: sem1
   :nb_prop: 3
   :nb_pos: 1

   Avant d'être utilisé, un sémaphore doit être déclaré et initialisé. Après son utilisation, il doit être détruit. Parmi les séquences d'instructions ci-dessous, une seule initialise correctement un sémaphore à la valeur 1. Laquelle ?

   .. positive::

      .. code-block:: c

           sem_t semaphore;

           sem_init(&semaphore, 0,1);

           // ...

           sem_destroy(&semaphore);


   .. positive

      .. code-block:: c

         sem_t *semaphore;
         semaphore=(sem_t *)malloc(sizeof(struct sem_t));
         if (semaphore==NULL)
            error("malloc");

         sem_init(semaphore, 0,1);

         // ...

         sem_destroy(semaphore);


   .. negative::

      .. code-block:: c

         sem_t semaphore;

         sem_init(semaphore, 1,0);

         // ...

         sem_destroy(semaphore);

      .. comment::

         `sem_init(3)`_ et `sem_destroy(3)`_ prennent comme premier argument un pointeur vers une structure ``sem_t``. `sem_init(3)`_ prend comme troisième argument la valeur initiale du sémaphore.

   .. negative::

      .. code-block:: c

         sem_t semaphore;

         sem_init(&semaphore, 1,0);

         // ...

         sem_destroy(&semaphore);

      .. comment::

         `sem_init(3)`_ prend comme troisième argument la valeur initiale du sémaphore.

   .. negative::

      .. code-block:: c

         sem_t *semaphore;
         semaphore=(sem_t *)malloc(sizeof(struct sem_t));
         if (semaphore==NULL)
            error("malloc");

         sem_init(semaphore, 1, 0);

         // ...

         sem_destroy(semaphore);

      .. comment::

         `sem_init(3)`_ prend comme troisième argument la valeur initiale du sémaphore.


   .. negative::

      .. code-block:: none

         sem_t *semaphore;
         semaphore=(sem_t *)malloc(sizeof(struct sem_t));
         if (semaphore==NULL)
            error("malloc");

         sem_init(semaphore, 1, 0);

         // ...

         sem_destroy(&semaphore);

       .. comment::

          `sem_init(3)`_ prend comme troisième argument la valeur initiale du sémaphore. `sem_destroy(3)`_ prennent comme premier argument un pointeur vers une structure ``sem_t``.


Question 7. Exclusion mutuelle
------------------------------

.. question:: semmutex
   :nb_prop: 3
   :nb_pos: 1

   Les sémaphores peuvent être utilisés tout comme les mutex pour résoudre des problèmes d'exclusion mutuelle. Parmi les extraits de programmes ci-dessous, une seule est une solution correcte au problème de l'exclusion mutuelle en utilisant des sémaphores. Laquelle ?

   .. positive::


      .. code-block:: c


         static sem_t semaphore;
         long global=0;

         int increment(int i) {
            // ...
         }

         void *inc(void * param) {
           for(int j=0;j<1000000;j++) {
             sem_wait(&semaphore);
             global=increment(global);
             sem_post(&semaphore);
           }
         }

         int main (int argc, char *argv[])  {
           pthread_t thread[NTHREADS];
           int err;

           sem_init(&semaphore, 0,1);

           for(int i=0;i<NTHREADS;i++) {
             err=pthread_create(&(thread[i]),NULL,&inc,NULL);
             if(err!=0)
               error(err,"pthread_create");
           }

           // reste non fourni
         }

   .. positive::

      .. code-block:: c


         sem_t * semaphore;
         long global=0;

         int increment(int i) {
            // ...
         }

         void *inc(void * param) {
           for(int j=0;j<1000000;j++) {
             sem_wait(semaphore);
             global=increment(global);
             sem_post(semaphore);
           }
         }

         int main (int argc, char *argv[])  {
           pthread_t thread[NTHREADS];
           int err;
           semaphore=(sem_t *)malloc(sizeof(sem_t))
           if(semaphore==NULL)
             error("malloc");

           sem_init(semaphore, 0,1);

           for(int i=0;i<NTHREADS;i++) {
             err=pthread_create(&(thread[i]),NULL,&inc,NULL);
             if(err!=0)
               error(err,"pthread_create");
           }

           // reste non fourni
         }

   .. negative::


      .. code-block:: c


         static sem_t semaphore;
         long global=0;

         int increment(int i) {
            // ...
         }

         void *inc(void * param) {
           for(int j=0;j<1000000;j++) {
             sem_wait(&semaphore);
             global=increment(global);
             sem_post(&semaphore);
           }
         }

         int main (int argc, char *argv[])  {
           pthread_t thread[NTHREADS];
           int err;

           sem_init(&semaphore, 0,0);

           for(int i=0;i<NTHREADS;i++) {
             err=pthread_create(&(thread[i]),NULL,&inc,NULL);
             if(err!=0)
               error(err,"pthread_create");
           }

           // reste non fourni
         }

      .. comment::

         Pour résoudre un problème d'exclusion mutuelle, il faut initialiser le sémaphore à ``1`` avec `sem_init(3)`_ et non à ``0`` comme dans cet exemple.

   .. negative::

      .. code-block:: c


         static sem_t semaphore;
         long global=0;

         int increment(int i) {
            // ...
         }

         void *inc(void * param) {
           for(int j=0;j<1000000;j++) {
             sem_post(&semaphore);
             global=increment(global);
             sem_wait(&semaphore);
           }
         }

         int main (int argc, char *argv[])  {
           pthread_t thread[NTHREADS];
           int err;

           sem_init(&semaphore, 0,0);

           for(int i=0;i<NTHREADS;i++) {
             err=pthread_create(&(thread[i]),NULL,&inc,NULL);
             if(err!=0)
               error(err,"pthread_create");
           }

           // reste non fourni
         }

      .. comment::

         Pour résoudre un problème d'exclusion mutuelle, il faut initialiser le sémaphore à ``1`` avec `sem_init(3)`_ et non à ``0`` comme dans cet exemple. En outre, l'accès à la section critique doit être précédée par un appel à `sem_wait(3)`_  et suivie par un appel à `sem_post(3)`_ et non l'inverse comme dans cet exemple.

   .. negative::

      .. code-block:: c


         sem_t * semaphore;
         long global=0;

         int increment(int i) {
            // ...
         }

         void *inc(void * param) {
           for(int j=0;j<1000000;j++) {
             sem_wait(semaphore);
             global=increment(global);
             sem_post(semaphore);
           }
         }

         int main (int argc, char *argv[])  {
           pthread_t thread[NTHREADS];
           int err;
           semaphore=(sem_t *)malloc(sizeof(sem_t))
           if(semaphore==NULL)
             error("malloc");

           sem_init(semaphore, 0,0);

           for(int i=0;i<NTHREADS;i++) {
             err=pthread_create(&(thread[i]),NULL,&inc,NULL);
             if(err!=0)
               error(err,"pthread_create");
           }

           // reste non fourni
         }

      .. comment::

         Pour résoudre un problème d'exclusion mutuelle, il faut initialiser le sémaphore à ``1`` avec `sem_init(3)`_ et non à ``0`` comme dans cet exemple.

   .. negative::

      .. code-block:: c


         sem_t * semaphore;
         long global=0;

         int increment(int i) {
            // ...
         }

         void *inc(void * param) {
           for(int j=0;j<1000000;j++) {
             sem_post(semaphore);
             global=increment(global);
             sem_wait(semaphore);
           }
         }

         int main (int argc, char *argv[])  {
           pthread_t thread[NTHREADS];
           int err;
           semaphore=(sem_t *)malloc(sizeof(sem_t))
           if(semaphore==NULL)
             error("malloc");

           sem_init(semaphore, 0,0);

           for(int i=0;i<NTHREADS;i++) {
             err=pthread_create(&(thread[i]),NULL,&inc,NULL);
             if(err!=0)
               error(err,"pthread_create");
           }

           // reste non fourni
         }

      .. comment::

         Pour résoudre un problème d'exclusion mutuelle, il faut initialiser le sémaphore à ``1`` avec `sem_init(3)`_ et non à ``0`` comme dans cet exemple. En outre, l'accès à la section critique doit être précédée par un appel à `sem_wait(3)`_  et suivie par un appel à `sem_post(3)`_ et non l'inverse comme dans cet exemple.



Question 8. Fonctions 'thread-safe'
-----------------------------------

.. question:: threadsafe
   :nb_prop: 3
   :nb_pos: 1

   La plupart des fonctions de la librairie standard sont des fonctions thread-safe, c'est-à-dire des fonctions que l'on peut utiliser dans plusieurs threads distincts sans risquer de problèmes d'accès concurrent. Cependant, certaines fonctions, souvent parmi les plus anciennes, ne sont pas thread-safe. Parmi les fonctions ci-dessous, une seule est thread-safe. Laquelle ?

   .. positive::

      `gettimeofday(2)`_

      .. comment::

         Les fonctions qui ne sont pas thread-safe sont listées dans `pthreads(7)`_.

   .. positive::

      `strsep(3)`_

      .. comment::

         Les fonctions qui ne sont pas thread-safe sont listées dans `pthreads(7)`_.

   .. negative::

      `getenv(3)`_

      .. comment::

         Les fonctions qui ne sont pas thread-safe sont listées dans `pthreads(7)`_.

   .. negative::

      `getopt(3)`_

      .. comment::

         Les fonctions qui ne sont pas thread-safe sont listées dans `pthreads(7)`_.

   .. negative::

      `asctime(3)`_

      .. comment::

         Les fonctions qui ne sont pas thread-safe sont listées dans `pthreads(7)`_.

   .. negative::

      `strtok(3)`_

      .. comment::

         Les fonctions qui ne sont pas thread-safe sont listées dans `pthreads(7)`_.

   .. negative::

      `strerror(3)`_

      .. comment::

         Les fonctions qui ne sont pas thread-safe sont listées dans `pthreads(7)`_.

   .. negative::

      `getopt(3)`_

      .. comment::

         Les fonctions qui ne sont pas thread-safe sont listées dans `pthreads(7)`_.


