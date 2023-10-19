set terminal epslatex size 3,4 standalone color colortext 8
set output 'Combine_plot_Em_and_ni_for_A0p3_B0p5_Nx4_at_U0.tex'

set multiplot
#########################################################
set lmargin at screen 0.16
set rmargin at screen 0.97
set tmargin at screen 0.98
set bmargin at screen 0.59

set ylabel '\fontsize{12}{12} $E_i$' offset 7,0
set xlabel '\fontsize{12}{12} $m$' offset 0,0.3
set xrange [0.0:4.5]
set yrange [-4:4]


set ytics ('\fontsize{10}{10} $0.0$' 0, '\fontsize{10}{10} $1.0$' 1, '\fontsize{10}{10} $-1.0$' -1, '\fontsize{10}{10} $2.0$' 2, '\fontsize{10}{10} $-2.0$' -2, '\fontsize{10}{10} $3.0$' 3, '\fontsize{10}{10} $-3.0$' -3, '\fontsize{10}{10} $4.0$' 4, '\fontsize{10}{10} $-4.0$' -4)

set xtics ('\fontsize{10}{10} $0.0$' 0.0, '' 0.5, '\fontsize{10}{10} $1.0$' 1.0, '' 1.5, '\fontsize{10}{10} $2.0$' 2.0, '' 2.5, '\fontsize{10}{10} $3.0$' 3.0, '' 3.5, '\fontsize{10}{10} $4.0$' 4.0, '' 4.5)

set label 1 at 0.5,-3.5 '\fontsize{12}{12}\selectfont$T_1$'
set label 2 at 3.5,0.0 '\fontsize{12}{12}\selectfont$BI$'
set label 3 at 0.05,3.6 '\scalebox{1.25}{(a)}'
set arrow nohead from 2.025,-4.0 to 2.025,4.0 dt 6 lt 1 lw 3 lc rgb 'black'

plot "Data_Files/Eigens_vs_M_A_0.3_B_0.5_20x4.txt" u 1:2 w p ps 0.25 pt 7 lc rgb 'red' ti ''

unset label 1
unset label 2
unset arrow

#############################################################
set lmargin at screen 0.16
set rmargin at screen 0.97
set tmargin at screen 0.51
set bmargin at screen 0.08

set xrange [0:24]
set yrange [-0.12:0.14]

set xtics ('\fontsize{10}{10} \selectfont$0$' 0, '\fontsize{10}{10} \selectfont$4$' 4, '\fontsize{10}{10} \selectfont$8$' 8,'\fontsize{10}{10} \selectfont$12$' 12, '\fontsize{10}{10} \selectfont$16$' 16, '\fontsize{10}{10} \selectfont$20$' 20, '\fontsize{10}{10} \selectfont$24$' 24) offset 0,0

#set ytics ('\fontsize{10}{10} \selectfont$0.00$' 0.00, '\fontsize{10}{10} \selectfont$0.02$' 0.02, '\fontsize{10}{10} \selectfont$0.04$' 0.04,'\fontsize{10}{10} \selectfont$0.06$' 0.06, '\fontsize{10}{10} \selectfont$0.08$' 0.08, '\fontsize{10}{10} \selectfont$-0.02$' -0.02, '\fontsize{10}{10} \selectfont$-0.04$' -0.04,'\fontsize{10}{10} \selectfont$-0.06$' -0.06, '\fontsize{10}{10} \selectfont$-0.08$' -0.08) offset 0.5,0

set ytics ('\fontsize{10}{10} \selectfont$0.00$' 0.00, '\fontsize{10}{10} \selectfont$0.03$' 0.03, '\fontsize{10}{10} \selectfont$0.06$' 0.06,'\fontsize{10}{10} \selectfont$0.09$' 0.09, '\fontsize{10}{10} \selectfont$0.12$' 0.12, '\fontsize{10}{10} \selectfont$-0.03$' -0.03, '\fontsize{10}{10} \selectfont$-0.06$' -0.06,'\fontsize{10}{10} \selectfont$-0.09$' -0.09, '\fontsize{10}{10} \selectfont$-0.12$' -0.12) offset 0.5,0

set ylabel '\fontsize{10}{10} $\langle \tilde{n}_{i,\alpha}\rangle$' offset 8.7,0
set xlabel '\fontsize{10}{10}\selectfont$i=r_y+L_y*r_x$' offset 0,0.4
set key samplen 1 spacing 1 at 17,0.1225

set xzeroaxis lw 3 lt 1 dt 3 lc rgb 'black'
#set label 2 at 18,0.0725 '\fontsize{8}{8}\selectfont$m=1.0$'

set label 3 at 0.4,0.1275 '\scalebox{1.25}{(b)}'

set object rect from 7.5,-0.03 to 15.5,0.03 fs solid 0.55 noborder fc rgb "#73d2f6" behind 

plot "Data_Files/ni_vs_i_m1.75.txt" u 1:($2)-0.158729 w lp lw 2.0 lt 1 ps 0.8 pt 7 lc rgb 'red' ti '\fontsize{8}{8}\selectfont $\alpha=s$, $m=1.75$', "Data_Files/ni_vs_i_m1.75.txt" u 1:($3)-1.84115 w lp lw 2.0 lt 1 ps 0.8 pt 5 lc rgb 'blue' ti '\fontsize{8}{8}\selectfont $\alpha=p$, $m=1.75$',"Data_Files/ni_vs_i_m3.0.txt" u 1:($2)-0.00634586 w lp lw 2.0 lt 1 ps 0.8 pt 6 lc rgb 'red' ti '\fontsize{8}{8}\selectfont $\alpha=s$, $m=3.0$', "Data_Files/ni_vs_i_m3.0.txt" u 1:($3)-1.99364 w lp lw 2.0 lt 1 ps 0.8 pt 4 lc rgb 'blue' ti '\fontsize{8}{8}\selectfont $\alpha=p$, $m=3.0$'

unset multiplot

