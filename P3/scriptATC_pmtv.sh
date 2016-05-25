#!/bin/bash

#Se asigna al trabajo el nombre pmtv
#PBS -N pmtv
#Se asigna al trabajo la cola ac
#PBS -q ac

export OMP_NUM_THREADS=12
N=8000

export OMP_SCHEDULE="STATIC"
echo "STATIC";
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N

export OMP_SCHEDULE="STATIC,2"
echo "STATIC,2";
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N

export OMP_SCHEDULE="STATIC,32"
echo "STATIC,32";
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N

export OMP_SCHEDULE="STATIC,64"
echo "STATIC,64";
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N

export OMP_SCHEDULE="STATIC,2048"
echo "STATIC,2048";
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N

echo "--------------------------";

export OMP_SCHEDULE="DYNAMIC"
echo "DYNAMIC";
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N

export OMP_SCHEDULE="DYNAMIC,2"
echo "DYNAMIC,2";
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N

export OMP_SCHEDULE="DYNAMIC,32"
echo "DYNAMIC,32";
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N

export OMP_SCHEDULE="DYNAMIC,64"
echo "DYNAMIC,64";
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N

export OMP_SCHEDULE="DYNAMIC,2048"
echo "DYNAMIC,2048";
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N

echo "--------------------------";

export OMP_SCHEDULE="GUIDED"
echo "GUIDED";
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N

export OMP_SCHEDULE="GUIDED,2"
echo "GUIDED,2";
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N

export OMP_SCHEDULE="GUIDED,32"
echo "GUIDED,32";
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N

export OMP_SCHEDULE="GUIDED,64"
echo "GUIDED,64";
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N

export OMP_SCHEDULE="GUIDED,2048"
echo "GUIDED,2048";
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
$PBS_O_WORKDIR/pmtv-OpenMP $N
