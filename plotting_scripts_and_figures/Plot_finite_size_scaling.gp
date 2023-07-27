set terminal epslatex size 2.75,2 standalone color colortext 8
set output 'Finite_size_scaling_at_m1p75.tex'

set multiplot
#########################################################
set lmargin at screen 0.16
set rmargin at screen 0.98
set tmargin at screen 0.96
set bmargin at screen 0.15

set xrange [0.01:0.3]
set yrange [-0.112:-0.08]


set ytics ('\fontsize{8}{8} $-0.08$' -0.08,'\fontsize{8}{8} $-0.09$' -0.09,'\fontsize{8}{8} $-0.10$' -0.10,'\fontsize{8}{8} $-0.11$' -0.11) offset 0.5,0

set xtics ('\fontsize{8}{8} $\frac{1}{4}$' 0.25,'\fontsize{8}{8} $\frac{1}{6}$' 0.166667,'\fontsize{8}{8} $\frac{1}{8}$' 0.125,'\fontsize{8}{8} $\frac{1}{16}$' 0.0625, '\fontsize{8}{8} $\frac{1}{32}$' 0.03125, '\fontsize{8}{8} $\frac{1}{64}$' 0.015625) offset 0,0.3

set ylabel '\fontsize{10}{10} $\langle\tilde{n}_{0,s}\rangle$' offset 6.5,0
set xlabel '\fontsize{10}{10} $1/N$' offset -2.0,0.5

set logscale x
set key samplen 1 at 0.0325,-0.095

plot "Data_Files/ntilde_vs_1byLx_for_m1.75.txt" u 2:3 w lp lw 2 lt 1 ps 1 pt 7 lc rgb '#34495e' ti '\fontsize{7}{7}\selectfont$U=0.0$',"Data_Files/ntilde_vs_1byLx_for_m1.75_U1.0.txt" u 2:3 w lp lw 2 ps 1.1 pt 5 lc rgb '#e74c3c' ti '\fontsize{7}{7}\selectfont$U=1.0$'


#############################################################
unset multiplot
