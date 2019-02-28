#!/bin/bash
#./run_externals.sh
targ="h"
e0=(17.027 11.9 15.022 18.028 10.014 12.518 15.012 18.001 15.004 20.001 18.018 15.004 12.498 18.018 15.005 11.884 15.004 12.499 9.999 19.505 16.002 13.29 10.4 19.5 16.0 13.5 16.0 19.5 16.0 19.5 19.5)
th=(18.02 26.015 26.015 26.015 34.009 34.009 34.009 14.991 14.991 18.996 18.996 18.996 18.996 25.993 25.993 25.993 33.992 33.992 33.992 60.0 59.999 60.0 60.0 49.994 49.995 49.998 15.0 15.0 18.0 18.0 20.6)
#e0=(5.500)
#th=(37.896)
for i in {0..30}
#for i in 0
do
  #rm input/grids/${e0[i]}_${th[i]}.inp
  ./make_grid ${e0[i]}_${th[i]}.inp ${e0[i]} 0.875 10.5 0.125 ${th[i]}
  #./make_grid ${e0[i]}_${th[i]}.inp ${e0[i]} 1.54 2.36 0.02 ${th[i]}

  rm input/externals/${targ}${e0[i]}_${th[i]}.inp
  touch input/externals/${targ}${e0[i]}_${th[i]}.inp

  echo "input files for EXTERNAL: runplan/target/output" >> input/externals/${targ}${e0[i]}_${th[i]}.inp
  echo "input/grids/${e0[i]}_${th[i]}.inp" >> input/externals/${targ}${e0[i]}_${th[i]}.inp
  echo "input/targets/eg1b.targ_${targ}_shms" >> input/externals/${targ}${e0[i]}_${th[i]}.inp
  echo "output/externals/${targ}${e0[i]}_${th[i]}.out" >> input/externals/${targ}${e0[i]}_${th[i]}.inp
done
