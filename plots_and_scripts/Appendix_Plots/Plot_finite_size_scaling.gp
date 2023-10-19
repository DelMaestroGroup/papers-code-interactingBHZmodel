set terminal epslatex size 2.75,2 standalone color colortext 8
set output 'Finite_size_scaling_at_m1p75.tex'

set multiplot
#########################################################
set lmargin at screen 0.13
set rmargin at screen 0.98
set tmargin at screen 0.96
set bmargin at screen 0.15

set xrange [0.0075:0.3]
set yrange [0.055:0.15]


#set ytics ('\fontsize{8}{8} $-0.10$' -0.10,'\fontsize{8}{8} $-0.11$' -0.11,'\fontsize{8}{8} $-0.12$' -0.12,'\fontsize{8}{8} $-0.13$' -0.13, '\fontsize{8}{8} $-0.14$' -0.14, '\fontsize{8}{8} $-0.15$' -0.15) offset 0.5,0

set ytics ('\fontsize{8}{8} $0.06$' 0.06,'\fontsize{8}{8} $0.07$' 0.07,'\fontsize{8}{8} $0.08$' 0.08,'\fontsize{8}{8} $0.09$' 0.09, '\fontsize{8}{8} $0.10$' 0.10, '\fontsize{8}{8} $0.11$' 0.11, '\fontsize{8}{8} $0.12$' 0.12, '\fontsize{8}{8} $0.13$' 0.13, '\fontsize{8}{8} $0.14$' 0.14, '\fontsize{8}{8} $0.15$' 0.15) offset 0.5,0

set xtics ('\fontsize{10}{10} $\frac{1}{4}$' 0.25,'\fontsize{10}{10} $\frac{1}{6}$' 0.166667,'\fontsize{10}{10} $\frac{1}{10}$' 0.125,'\fontsize{10}{10} $\frac{1}{16}$' 0.0625, '\fontsize{10}{10} $\frac{1}{32}$' 0.03125, '\fontsize{10}{10} $\frac{1}{64}$' 0.015625,'\fontsize{10}{10} $\frac{1}{128}$' 0.0078125) offset 0,0.2

#set ylabel '\fontsize{10}{10} $\langle\tilde{n}_{0,s}\rangle$' offset 6.5,0
set xlabel '\fontsize{9}{9} $1/N_x$' offset -0.9,0.5

set label 1 at 0.012,0.135 '\fontsize{10}{10}\selectfont$|\sum_{r_x}\langle \tilde{n}_{r_x,s}\rangle|$'

set logscale x
set key samplen 1 spacing 1.5 at 0.0325,0.095

plot "../Data_Files/Auc_vs_1byLx_for_m1.75_U0.0.txt" u 2:(abs(($3))) w lp lw 2 lt 1 ps 1 pt 7 lc rgb '#34495e' ti '\fontsize{7}{7}\selectfont$U=0.0$',"../Data_Files/Auc_vs_1byLx_for_m1.75_U1.0.txt" u 2:(abs(($3))) w lp lw 2 ps 1.1 pt 5 lc rgb '#e74c3c' ti '\fontsize{7}{7}\selectfont$U=1.0$',"../Data_Files/Auc_vs_1byLx_for_m1.75_U5.0.txt" u 2:(abs(($3))) w lp lw 2 ps 1.1 pt 5 lc rgb '#f39c12' ti '\fontsize{7}{7}\selectfont$U=5.0$'

#############################################################
unset multiplot
