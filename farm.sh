#!/bin/bash

ANGLES=(16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44)
#TARGETS=(c h d)
TARGETS=(h)
mkdir -p scripts

for TARGET in ${TARGETS[@]};
do
  for ANGLE in ${ANGLES[@]};
  do
    script=scripts/script_${TARGET}_${ANGLE}.xml
    cp  farm_template.xml ${script}
    sed -i "s|%%TARGET%%|${TARGET}|g" -- ${script}
    sed -i "s|%%ANGLE%%|${ANGLE}|g" -- ${script}
    jsub -xml ${script}
  done
done
