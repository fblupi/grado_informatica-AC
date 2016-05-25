// gcc -O2 -fopenmp sumaVectoresFor.c -o sumaVectoresFor

#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

//#define PRINTF_ALL   // Comentar para quitar el print...

int main(int argc, char **argv) {

	unsigned int N = atoi(argv[1]);

	double *v1, *v2, *v3;
	v1 = (double*) malloc(N*sizeof(double));
	v2 = (double*) malloc(N*sizeof(double));
	v3 = (double*) malloc(N*sizeof(double));
	if ( (v1==NULL) || (v2==NULL) || (v3==NULL) ){
		printf("Error en la reserva de espacio para los vectores\n");
		exit(-2);
	}

	int i;

	double cgt1, cgt2, ncgt;

	if (argc<2){
		printf("Faltan no componentes del vector\n");
		exit(-1);
	}

	// Inicializar vectores
	#pragma omp parallel for
	for(i=0; i<N; i++) {
		v1[i] = N*0.1+i*0.1; v2[i] = N*0.1-i*0.1;
		//printf("La hebra %d ejecuta la iteracion %d del primer bucle\n",omp_get_thread_num(),i);
	}
	cgt1=omp_get_wtime();

	// Calcular suma de vectores
	#pragma omp parallel for
	for(i=0; i<N; i++) {
		v3[i] = v1[i] + v2[i];
		//printf("La hebra %d ejecuta la iteracion %d del segundo bucle\n", omp_get_thread_num(),i);
	}
	cgt2=omp_get_wtime();
	ncgt=(cgt2-cgt1);

	#ifdef PRINTF_ALL
	printf("Tiempo(seg.):%11.9f\t / Tamaño Vectores:%u\n",ncgt,N);
	for(i=0; i<N; i++)
		printf("/ V1[%d]+V2[%d]=V3[%d](%8.6f+%8.6f=%8.6f) /\n", i,i,i,v1[i],v2[i],v3[i]);
	#else
	printf("Tiempo(seg.):%11.9f\t / Tamaño Vectores:%u\t/ V1[0]+V2[0]=V3[0](%8.6f+%8.6f=%8.6f) / /V1[%d]+V2[%d]=V3[%d](%8.6f+%8.6f=%8.6f) /\n", ncgt,N,v1[0],v2[0],v3[0],N-1,N-1,N-1,v1[N-1],v2[N-1],v3[N-1]);
	#endif

	free(v1); // libera el espacio reservado para v1
	free(v2); // libera el espacio reservado para v2
	free(v3); // libera el espacio reservado para v3
	
	return 0;
}
