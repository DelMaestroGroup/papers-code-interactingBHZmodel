set terminal epslatex size 3.5,4.0 standalone color colortext 8
set output 'Combined_topological_plots_for_4x4_System_at_A0p3_B0p5_m3p0.tex'

set multiplot
#########################################################
set lmargin at screen 0.14
set rmargin at screen 0.97
set tmargin at screen 0.98
set bmargin at screen 0.57

set xrange [0:16]
set yrange [-0.125:0.125]

set ytics ('\fontsize{10}{10} \selectfont$0.00$' 0.00, '\fontsize{10}{10} \selectfont$0.03$' 0.03, '\fontsize{10}{10} \selectfont$0.06$' 0.06,'\fontsize{10}{10} \selectfont$0.09$' 0.09, '\fontsize{10}{10} \selectfont$0.12$' 0.12, '\fontsize{10}{10} \selectfont$-0.03$' -0.03, '\fontsize{10}{10} \selectfont$-0.06$' -0.06,'\fontsize{10}{10} \selectfont$-0.09$' -0.09, '\fontsize{10}{10} \selectfont$-0.12$' -0.12) offset 0.5,0

set xtics('\fontsize{10}{10} \selectfont$0$' 0, '\fontsize{10}{10} \selectfont$2$' 2, '\fontsize{10}{10} \selectfont$4$' 4, '\fontsize{10}{10} \selectfont$6$' 6, '\fontsize{10}{10} \selectfont$8$' 8, '\fontsize{10}{10} \selectfont$10$' 10, '\fontsize{10}{10} \selectfont$12$' 12, '\fontsize{10}{10} \selectfont$14$' 14, '\fontsize{10}{10} \selectfont$16$' 16)  offset 0,0.2

set ylabel '\fontsize{10}{10} $\langle \tilde{n}_{i,\alpha}\rangle$' offset 8.5,0
set xlabel '\fontsize{10}{10}\selectfont$i=r_y+L_y*r_x$' offset 0,0.7

set key samplen 1.5 spacing 1.0 at 10.25,-0.015
set xzeroaxis lw 3 lt 1 dt 3 lc rgb 'black'

set label 1 at 0.5,0.09 '\scalebox{1.25}{(a)}'
set label 2 at 6.5,0.1 '\fontsize{9}{9}\selectfont$m=3.0$'

plot "../Data_Files/ni_vs_i_orb0_U1.0_m3.0_4x4.txt" u 1:2 w lp lw 3 lt 1 dt 3 ps 1.0 pt 6 lc rgb 'red' ti '\fontsize{8}{8}\selectfont $\alpha=s,~U=1.0$',"../Data_Files/ni_vs_i_orb1_U1.0_m3.0_4x4.txt" u 1:2 w lp lw 3 lt 1 dt 3 ps 1.0 pt 4 lc rgb 'blue' ti '\fontsize{8}{8}\selectfont $\alpha=p,~U=1.0$',"../Data_Files/ni_vs_i_orb0_U7.5_m3.0_4x4.txt" u 1:2 w lp lw 3 lt 1 ps 1.0 pt 7 lc rgb 'red' ti '\fontsize{8}{8}\selectfont $\alpha=s,~U=7.5$',"../Data_Files/ni_vs_i_orb1_U7.5_m3.0_4x4.txt" u 1:2 w lp lw 3 lt 1 ps 1.0 pt 5 lc rgb 'blue' ti '\fontsize{8}{8}\selectfont $\alpha=p,~U=7.5$', "../Data_Files/ni_vs_i_orb0_U8.5_m3.0_4x4.txt" u 1:2 w lp lw 3 lt 1 dt 12 ps 1.0 pt 7 lc rgb 'red' ti '\fontsize{8}{8}\selectfont $\alpha=s,~U=8.5$',"../Data_Files/ni_vs_i_orb1_U8.5_m3.0_4x4.txt" u 1:2 w lp lw 3 lt 1 dt 12 ps 1.0 pt 5 lc rgb 'blue' ti '\fontsize{8}{8}\selectfont $\alpha=p,~U=8.5$'

unset label 1
unset label 2
unset label 3
unset label 4
unset yrange
unset xrange
unset ylabel 
#########################################################
set lmargin at screen 0.14
set rmargin at screen 0.97
set tmargin at screen 0.48
set bmargin at screen 0.07

set xrange [0:12]
set yrange [-0.24:0.09]

set xtics ('\fontsize{10}{10} \selectfont$0$' 0, '\fontsize{10}{10} \selectfont$2$' 2,'\fontsize{10}{10} \selectfont$4$' 4, '\fontsize{10}{10} \selectfont$6$' 6, '\fontsize{10}{10} \selectfont$8$' 8, '\fontsize{10}{10} \selectfont$10$' 10, '\fontsize{10}{10} \selectfont$12$' 12) offset 0,0.2

set ytics ('\fontsize{10}{10} \selectfont$-0.24$' -0.24, '\fontsize{10}{10} \selectfont$-0.20$' -0.20, '\fontsize{10}{10} \selectfont$-0.16$' -0.16, '\fontsize{10}{10} \selectfont$-0.12$' -0.12, '\fontsize{10}{10} \selectfont$-0.08$' -0.08,'\fontsize{10}{10} \selectfont$-0.04$' -0.04, '\fontsize{10}{10} \selectfont$0.00$' 0.00, '\fontsize{10}{10} \selectfont$0.04$' 0.04, '\fontsize{10}{10} \selectfont$0.08$' 0.08) offset 0.5,0

set xlabel '\fontsize{10}{10}\selectfont$U$' offset 0,0.4

set label 1 front at 0.5,0.06 '\scalebox{1.25}{(b)}'
set label 2 at 9.9,0.07 '\fontsize{9}{9}\selectfont$m=3.0$'
set label 3 front at 7.0,0.04 '\fontsize{9}{9}\selectfont$T_1$'
set label 4 front at 8.35,-0.16 '\fontsize{9}{9}\selectfont$T_2$'

set key samplen 2 spacing 2.2 at 6.25,-0.12
set xzeroaxis lw 3 lt 1 dt 3 lc rgb 'black'

set object rect from 6.55,-0.24 to 8.18,0.09 fs solid 0.25 noborder fc rgb "red" behind
set object rect from 8.18,-0.24 to 9.0,0.09 fs solid 0.25 noborder fc rgb "blue" behind

plot "../Data_Files/Edge_minus_Bulk_occupation_for_orb0_vs_U_m3.0.txt" u 1:2 w lp lw 3.0 lt 1 ps 1.0 pt 7 lc rgb 'red' ti '\fontsize{9}{9} $\sum_{i \in edge}\langle \tilde{n}_{i,s}\rangle/N_e$',"../Data_Files/Bulk-Edge_spin_observes_m3.0.txt" u 1:($2)-($3) w lp lw 3.0 lt 1 dt 3 ps 1.0 pt 6 lc rgb 'dark-green' ti '\fontsize{9}{9} $\left[\langle S^2_{edge}\rangle-\langle S^2_{bulk}\rangle\right]$'


unset multiplot
