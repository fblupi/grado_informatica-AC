#!/bin/bash
i=65536
while [ $i -le 67108864 ]; do
./sumaVectores $i >> sumaVectores.dat
let i=i*2
done
