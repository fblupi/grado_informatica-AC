#!/bin/bash

rm result-a-PC.dat

export OMP_DYNAMIC=FALSE

export OMP_NUM_THREADS=1
./pmv-OpenMP-a 100 >> result-a-PC.dat
./pmv-OpenMP-a 1000 >> result-a-PC.dat
./pmv-OpenMP-a 10000 >> result-a-PC.dat
export OMP_NUM_THREADS=2
./pmv-OpenMP-a 100 >> result-a-PC.dat
./pmv-OpenMP-a 1000 >> result-a-PC.dat
./pmv-OpenMP-a 10000 >> result-a-PC.dat
export OMP_NUM_THREADS=3
./pmv-OpenMP-a 100 >> result-a-PC.dat
./pmv-OpenMP-a 1000 >> result-a-PC.dat
./pmv-OpenMP-a 10000 >> result-a-PC.dat
export OMP_NUM_THREADS=4
./pmv-OpenMP-a 100 >> result-a-PC.dat
./pmv-OpenMP-a 1000 >> result-a-PC.dat
./pmv-OpenMP-a 10000 >> result-a-PC.dat
