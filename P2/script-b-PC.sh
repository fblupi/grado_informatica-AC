#!/bin/bash

i=1
while [ $i -le 10 ]; do
./pmv-OpenMP-b $1 >> result-b-PC.dat
let i=i+1
done
