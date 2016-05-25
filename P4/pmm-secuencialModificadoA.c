// Modificacion A): Desenrollado de bucles

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

//#define TIMES
//#define PRINTF_ALL

main(int argc, char **argv) {
  // 1. Lectura valores de entrada
  if(argc < 2) {
    fprintf(stderr,"Falta num\n");
    exit(-1);
  }
  int n = atoi(argv[1]);
  if(n%5!=0) {
    fprintf(stderr,"num debe ser divisible entre 5\n");
    exit(-1);
  }
  int i,j,k;
  struct timespec ini,fin; double transcurrido;

  // 2. Creación e inicialización de vector y matriz
  // 2.1. Creación
  int **A, **B, **C;
  A = (int**) malloc(n*sizeof(int*));
  for(i=0;i<n;i++) 
    A[i] = (int*)malloc(n*sizeof(int));

  B = (int**) malloc(n*sizeof(int*));
  for(i=0;i<n;i++) 
    B[i] = (int*)malloc(n*sizeof(int));

  C = (int**) malloc(n*sizeof(int*));
  for(i=0;i<n;i++) 
    C[i] = (int*)malloc(n*sizeof(int));

  // 2.2. Inicialización
  for(i=0;i<n;i++){
    for(j=0;j<n;j++){
      B[i][j]=n*i+j;
      C[i][j]=n*i+j;
      A[i][j]=0;
    }
  }

  // 3. Impresión de vector y matriz
  #ifndef TIMES 
    #ifdef PRINTF_ALL
      printf("Matriz inicial B:\n");
      for (i=0; i<n; i++) {
        for (j=0; j<n; j++) {
          if(B[i][j]<10) printf(" %d ",B[i][j]);
          else printf("%d ",B[i][j]);
        }
        printf("\n");
      }
      printf("Matriz inicial C:\n");
      for (i=0; i<n; i++) {
        for (j=0; j<n; j++) {
          if(C[i][j]<10) printf(" %d ",C[i][j]);
          else printf("%d ",C[i][j]);
        }
        printf("\n");
      }
    #endif
  #endif

  int tmp0,tmp1,tmp2,tmp3,tmp4;

  // 4. Cálculo resultado
  clock_gettime(CLOCK_REALTIME,&ini);

  for (i=0; i<n; i++) {
    for (j=0; j<n; j++) {
      tmp0=tmp1=tmp2=tmp3=tmp4=0;
      for (k=0; k<n; k+=5) {
        tmp0=tmp0+B[i][k]*C[k][j];
        tmp1=tmp1+B[i][k+1]*C[k+1][j];
        tmp2=tmp2+B[i][k+2]*C[k+2][j];
        tmp3=tmp3+B[i][k+3]*C[k+3][j];
        tmp4=tmp4+B[i][k+4]*C[k+4][j];
      }
      A[i][j]=tmp0+tmp1+tmp2+tmp3+tmp4;
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
      printf("Matriz resultado A=B*C:\n");
      for (i=0; i<n; i++) {
        for (j=0; j<n; j++) {
          if(A[i][j]<10) printf(" %d ",A[i][j]);
          else printf("%d ",A[i][j]);
        }
        printf("\n");
      }
    #else 
      printf("Tiempo: \%11.9f\n",transcurrido);
      printf("A[0][0]: %d, A[n-1][n-1]: %d\n",A[0][0],A[n-1][n-1]);
    #endif
  #endif

  // 6. Eliminar de memoria
  free(A);
  free(B);
  free(C);
}
