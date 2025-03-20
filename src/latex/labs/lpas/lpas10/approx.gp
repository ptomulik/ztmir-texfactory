# vim: set syntax=gnuplot:
set encoding utf8;
set term epslatex size 12cm,7cm;
set output "lpas10/approx.tex";
unset key;
unset border;

set tmargin 1.5;
set xtics ('$t_0=0$' 0, '$t_1$' 2, '$t_2$' 3, '$t_3$' 5, '$t_4$' 7);
set ytics ('$h_0=0$' 0, '$h_1$' 1, '$h_4$' 1.5, '$h_2$' 4, '$h_3$' 5);

set grid xtics ytics;
set xlabel '$t$' offset graph 0.55,0.1;
set ylabel '$h(t)$' norotate offset graph 0.24,0.58;

set style line 1 lc "black" lt 1 lw 4 pt 7 ps 1;
set style line 2 lc "black" dt 2 lw 3 pt 7 ps 1;
set style line 3 lc "black" lt 1 lw 1 pt 7 ps 1;

set arrow from 0,0 to 8.5,0 filled ls 3;
set arrow from 0,0 to 0,5.5 filled ls 3;

plot '-' with linespoints ls 2 notitle, '-' smooth csplines ls 1
0 0
2 1
3 4
5 5
7 1.5
8 1.1
e
0 0
2 1.7
3 3.3
5 4.4
7 1.7
7.5 1.3
e
