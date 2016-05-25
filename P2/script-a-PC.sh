#!/bin/bash

i=1
while [ $i -le 10 ]; do
./pmv-OpenMP-a $1 >> result-a-PC.dat
let i=i+1
done
