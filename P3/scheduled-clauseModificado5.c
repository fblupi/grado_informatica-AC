#include <stdio.h> 
#include <stdlib.h> 
#ifdef _OPENMP 
  #include <omp.h> 
#else 
  #define omp_get_thread_num() 0 
#endif 
 
main(int argc, char **argv) { 

  int i, n=16,chunk,a[n],suma=0, dyn_, nthreads_, kind_, modifier_;

  if(argc < 3) { 
    fprintf(stderr,"\nFalta iteraciones o chunk \n"); 
    exit(-1); 
  } 
  n = atoi(argv[1]); if (n>200) n=200; chunk = atoi(argv[2]); 
 
  for (i=0; i<n; i++) a[i] = i; 

  omp_get_schedule(&kind_,&modifier_);
  printf("Antes de modificar:\n");
  printf("dyn-var: %d\n", omp_get_dynamic());
  printf("nthreads-var: %d\n", omp_get_num_threads());
  printf("run-sched-var: %d, %d\n", kind_, modifier_);

  printf("Introduce los valores de dyn-var, nthreads-var y run-sched-var (kind y modifier):\n");
  scanf("%d %d %d %d",&dyn_, &nthreads_, &kind_, &modifier_);
     
  omp_set_dynamic(dyn_);
  omp_set_num_threads(nthreads_);
  omp_set_schedule(kind_,modifier_);

  omp_get_schedule(&kind_,&modifier_);
  printf("Despues de modificar:\n");
  printf("dyn-var: %d\n", omp_get_dynamic());
  printf("nthreads-var: %d\n", omp_get_num_threads());
  printf("run-sched-var: %d, %d\n", kind_, modifier_);

  #pragma omp parallel
  { 
    #pragma omp for firstprivate(suma) lastprivate(suma) schedule(dynamic,chunk) 
    for (i=0; i<n; i++) { 
      suma = suma + a[i]; 
      //printf(" thread %d suma a[%d]=%d suma=%d \n", omp_get_thread_num(),i,a[i],suma); 
    }
  }
  //printf("Fuera de 'parallel for' suma=%d\n",suma);
}
