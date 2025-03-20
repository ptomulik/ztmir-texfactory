# vim: set syntax=gnuplot:
set encoding utf8;
set term epslatex size 12cm,7cm;
set output "lpas10/trapezoid.tex";
unset key;
unset border;

set tmargin 1.5;
set xtics (0, 1, 2, 3, 4);
set ytics ('$f_0$' 0, '$f_1$' 1, '$f_4$' 1.5, '$f_2$' 4, '$f_3$' 5);

set grid xtics ytics;
set xlabel '$x$' offset graph 0.55,0.1;
set ylabel '$f(x)$' norotate offset graph 0.20,0.58;

set style line 1 lc "black" lt 1 lw 4 pt 7 ps 1;
set style line 2 lc "black" dt 2 lw 4 pt 7 ps 1;
set style line 3 lc "black" lt 1 lw 1 pt 7 ps 1;

set arrow from 0,0 to 5.3,0 filled ls 3;
set arrow from 0,0 to 0,5.5 filled ls 3;

plot '-' with linespoints ls 1 notitle, '-' with impulse ls 2
0 0
1 1
2 4
3 5
4 1.5
5 1.1
e
0 0
1 1
2 4
3 5
4 1.5
5 1.1
e
