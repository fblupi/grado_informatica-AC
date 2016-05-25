#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#ifdef _OPENMP
  #include <omp.h>
#else
  #define omp_get_thread_num() 0
#endif

#define TIMES
//#define PRINTF_ALL

main(int argc, char **argv) {
  // 1. Lectura valores de entrada
  if(argc < 2) {
    fprintf(stderr,"Falta num\n");
    exit(-1);
  }
  int n = atoi(argv[1]); 
  if (n>10000) {
    n=10000; 
    printf("n=%d",n);
  }
  int i,j;
  struct timespec ini,fin; double transcurrido;

  // 2. Creación e inicialización de vector y matriz
  // Creación
  int *v1,*v2;
  v1 = (int*) malloc(n*sizeof(double));
  v2 = (int*) malloc(n*sizeof(double));

  int **M;
  M = (int**) malloc(n*sizeof(int*));
  for(i=0;i<n;i++) 
    M[i] = (int*)malloc(n*sizeof(int));

  // Inicialición
  for(i=0;i<n;i++)
    v1[i]=i;

  for(i=0;i<n;i++){
    for(j=0;j<n;j++){
      (M[i])[j]=v1[j]+n*i;
    }
  }

  // 3. Impresión de vector y matriz
  #ifndef TIMES 
    #ifdef PRINTF_ALL
      printf("Vector inicial:\n");
      for (i=0; i<n; i++) printf("%d ",v1[i]);
      printf("\n");

      printf("Matriz inicial:\n");
      for (i=0; i<n; i++) {
        for (j=0; j<n; j++) {
          if(M[i][j]<10) printf(" %d ",M[i][j]);
          else printf("%d ",M[i][j]);
        }
        printf("\n");
      }
    #endif
  #endif

  // 4. Cálculo resultado
  clock_gettime(CLOCK_REALTIME,&ini);
  for (i=0; i<n; i++) {
    v2[i]=0;
    for (j=0; j<n; j++) {
      v2[i]+=M[i][j]*v1[j];
    }
  }
  clock_gettime(CLOCK_REALTIME,&fin);
  transcurrido=(double) (fin.tv_sec-ini.tv_sec)+(double) ((fin.tv_nsec-ini.tv_nsec)/(1.e+9));

  // 5. Impresión de vector resultado
  #ifdef TIMES
    printf("%d %11.9f\n",n,transcurrido);
  #else
    #ifdef PRINTF_ALL
      printf("Tiempo: \%11.9f\n",transcurrido);
      printf("Vector resultado (M x v1):\n");
      for (i=0; i<n; i++) printf("%d ",v2[i]);
      printf("\n");
    #else 
      printf("Tiempo: \%11.9f\n",transcurrido);
      printf("v2[0]: %d, v2[n-1]: %d\n",v2[0],v2[n-1]);
    #endif
  #endif

  // 6. Eliminar de memoria
  free(M);
  free(v1);
  free(v2);
}
