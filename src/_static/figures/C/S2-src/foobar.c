/***********************************************
 * foobar.c
 *
 * Exercice
 *
 ***********************************************/

#include <stdio.h>
#include <stdlib.h>
void foo(void) {
  int a = 42;
    printf("%d\n", a);
}

void bar(void) {
// cppcheck-suppress uninitvar  ;
  int a;
  printf("%d\n", a);
}
// cppcheck-suppress uninitvar //
int main(int argc, char *argv[]) {
  foo();
  bar();
  return(EXIT_SUCCESS);
}
