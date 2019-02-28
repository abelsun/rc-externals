#!/bin/bash
./run_externals.sh
targ="h"
for var in `seq 16 44`
do
  ./make_grid 10.6_${var}.inp 10.589 1.00 6.90 0.01 ${var}

  touch input/externals/${targ}10.6_${var}.inp

  echo "input files for EXTERNAL: runplan/target/output" >> input/externals/${targ}10.6_${var}.inp
  echo "input/grids/10.6_${var}.inp" >> input/externals/${targ}10.6_${var}.inp
  echo "input/targets/eg1b.targ_${targ}_shms" >> input/externals/${targ}10.6_${var}.inp
  echo "output/externals/${targ}10.6_${var}.out" >> input/externals/${targ}10.6_${var}.inp
done
