#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

int main(int argc, char ** argv)
{
  int i, n=20, a[n],suma=10;

  if(argc < 2) {
    fprintf(stderr,"Falta iteraciones\n");
    exit(-1);
  }
  n = atoi(argv[1]); if (n>20) {n=20; printf("n=%d",n);}

  for (i=0; i<n; i++) a[i] = i;

  #pragma omp parallel for reduction(+:suma)
  for (i=0; i<n; i++) suma += a[i];

  printf("Tras 'parallel' suma=%d\n",suma);
}
