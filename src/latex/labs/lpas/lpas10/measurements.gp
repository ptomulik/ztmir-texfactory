# vim: set syntax=gnuplot:
set encoding utf8;
set term epslatex size 12cm,8cm;
set output "lpas10/measurements.tex";

set key right top;
set xlabel '$k$';

set grid xtics ytics;

set style line 1 lc "brown" lt 1 lw 2 pt 7 ps 1;
set style line 2 lc "blue"   lt 1 lw 2 pt 7 ps 1;

set datafile separator ",";
plot 'lpas10/measurements.csv' using 1:2 with lines ls 1 title columnheader, \
     '' using 1:3 with lines ls 2 title columnheader;
