#!/bin/bash

#Se asigna al trabajo el nombre pmv-a
#PBS -N pmv-a
#Se asigna al trabajo la cola ac
#PBS -q ac
#Se imprime información del trabajo usando variables de entorno de PBS
echo "Id. usuario del trabajo: $PBS_O_LOGNAME"
echo "Id. del trabajo: $PBS_JOBID"
echo "Nombre del trabajo especificado por usuario: $PBS_JOBNAME"
echo "Nodo que ejecuta qsub: $PBS_O_HOST"
echo "Directorio en el que se ha ejecutado qsub: $PBS_O_WORKDIR"
echo "Cola: $PBS_QUEUE"
echo "Nodos asignados al trabajo:"
cat $PBS_NODEFILE
#Se ejecuta pmv-OpenMP-a, que está en el directorio en el que se ha ejecutado qsub

export OMP_NUM_THREADS=1
echo "1 PROCESADOR";
N=100
echo "TAMA = 100";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
N=1000
echo "TAMA = 1000";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
N=10000
echo "TAMA = 10000";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N

export OMP_NUM_THREADS=2
echo "2 PROCESADOR";
N=100
echo "TAMA = 100";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
N=1000
echo "TAMA = 1000";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
N=10000
echo "TAMA = 10000";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N

export OMP_NUM_THREADS=3
echo "3 PROCESADOR";
N=100
echo "TAMA = 100";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
N=1000
echo "TAMA = 1000";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
N=10000
echo "TAMA = 10000";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N

export OMP_NUM_THREADS=4
echo "4 PROCESADOR";
N=100
echo "TAMA = 100";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
N=1000
echo "TAMA = 1000";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
N=10000
echo "TAMA = 10000";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N

export OMP_NUM_THREADS=5
echo "5 PROCESADOR";
N=100
echo "TAMA = 100";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
N=1000
echo "TAMA = 1000";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
N=10000
echo "TAMA = 10000";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N

export OMP_NUM_THREADS=6
echo "6 PROCESADOR";
N=100
echo "TAMA = 100";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
N=1000
echo "TAMA = 1000";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
N=10000
echo "TAMA = 10000";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N

export OMP_NUM_THREADS=7
echo "7 PROCESADOR";
N=100
echo "TAMA = 100";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
N=1000
echo "TAMA = 1000";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
N=10000
echo "TAMA = 10000";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N

export OMP_NUM_THREADS=8
echo "8 PROCESADOR";
N=100
echo "TAMA = 100";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
N=1000
echo "TAMA = 1000";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
N=10000
echo "TAMA = 10000";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N

export OMP_NUM_THREADS=9
echo "9 PROCESADOR";
N=100
echo "TAMA = 100";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
N=1000
echo "TAMA = 1000";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
N=10000
echo "TAMA = 10000";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N

export OMP_NUM_THREADS=10
echo "10 PROCESADOR";
N=100
echo "TAMA = 100";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
N=1000
echo "TAMA = 1000";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
N=10000
echo "TAMA = 10000";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N

export OMP_NUM_THREADS=11
echo "11 PROCESADOR";
N=100
echo "TAMA = 100";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
N=1000
echo "TAMA = 1000";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
N=10000
echo "TAMA = 10000";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N

export OMP_NUM_THREADS=12
echo "12 PROCESADOR";
N=100
echo "TAMA = 100";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
N=1000
echo "TAMA = 1000";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
N=10000
echo "TAMA = 10000";
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
$PBS_O_WORKDIR/pmv-OpenMP-a $N
