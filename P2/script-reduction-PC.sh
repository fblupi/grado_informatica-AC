#!/bin/bash

i=1
while [ $i -le 10 ]; do
./pmv-OpenMP-reduction $1 >> result-reduction-PC.dat
let i=i+1
done
