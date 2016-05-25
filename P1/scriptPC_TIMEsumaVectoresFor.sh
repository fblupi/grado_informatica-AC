#!/bin/bash
i=65536
while [ $i -le 67108864 ]; do
time ./sumaVectoresFor $i
let i=i*2
done
