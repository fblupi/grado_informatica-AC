#!/bin/bash
i=65536
while [ $i -le 67108864 ]; do
./sumaVectoresFor $i >> sumaVectoresFor.dat
let i=i*2
done
