#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

int main(int argc, char ** argv)
{
  int i, n = 7;
  int a[n], suma=8;

  for (i=0; i<n; i++)
    a[i] = i;

  #pragma omp parallel private(suma)
  {
    //suma=0;
    #pragma omp for
      for (i=0; i<n; i++)
      {
        suma = suma + a[i];
        printf("thread %d suma a[%d] / ", omp_get_thread_num(), i);
      }
    printf("\n* thread %d suma= %d", omp_get_thread_num(), suma);
  }
  printf("\nFuera de parallel suma= %d",suma);
  printf("\n");
}
