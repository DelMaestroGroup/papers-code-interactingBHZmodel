set terminal epslatex size 4,4 standalone color colortext 8
set output 'Combined_observe_plots_vs_U_for_4x4_System_at_A0p3_B0p5_m3p0.tex'

set multiplot
#########################################################
set lmargin at screen 0.09
set rmargin at screen 0.48
set tmargin at screen 0.975
set bmargin at screen 0.585

set xrange [0:12]
set yrange [0.0:2.0]


#set xtics ('' 0, '' 2, '' 4, '' 6, '' 8, '' 10, '' 12) offset 0,0
set xtics ('\fontsize{10}{10} \selectfont$0$' 0, '\fontsize{10}{10} \selectfont$2$' 2,'\fontsize{10}{10} \selectfont$4$' 4, '\fontsize{10}{10} \selectfont$6$' 6, '\fontsize{10}{10} \selectfont$8$' 8, '\fontsize{10}{10} \selectfont$10$' 10, '\fontsize{10}{10} \selectfont$12$' 12) offset 0,0

set ytics ('\fontsize{10}{10} \selectfont$0.0$' 0.0, '\fontsize{10}{10} \selectfont$0.5$' 0.5, '\fontsize{10}{10} \selectfont$1.0$' 1.0, '\fontsize{10}{10} \selectfont$1.5$' 1.5, '\fontsize{10}{10} \selectfont$2.0$' 2.0) offset 0.5,0

set ylabel '\fontsize{10}{10}\selectfont$\langle n_{\alpha}\rangle$' offset 8.35,0.25
set xlabel '\fontsize{10}{10}\selectfont$U$' offset 0,0.25
set key samplen 1 spacing 1.5 at 4.75,1.2

set label 1 at 10.4,1.87 '\scalebox{1.25}{(a)}'
set label 2 at 0.5,1.83 '\fontsize{9}{9}\selectfont$(0,2)$'
set label 3 at 9.8,1.1 '\fontsize{9}{9}\selectfont$(1,1)$'
set label 4 at 2,0.4 '\fontsize{9}{9}\selectfont$BI$'
set label 5 at 10,0.4 '\fontsize{9}{9}\selectfont$MI$'

set arrow nohead from 6.5,0.0 to 6.5,2.0 lt 1 dt 6 lw 3 lc rgb 'black'
set arrow nohead from 9.5,0.0 to 9.5,2.0 lt 1 dt 6 lw 3 lc rgb 'black'


plot "../Data_Files/Local_charge_observes_m3.0.txt" u 1:2 w lp lw 2.0 lt 1 ps 1.0 pt 7 lc rgb 'red' ti '\fontsize{9}{9}\selectfont$\alpha=s$', "../Data_Files/Local_charge_observes_m3.0.txt" u 1:3 w lp lw 2.0 lt 1 ps 1.0 pt 5 lc rgb 'blue' ti '\fontsize{9}{9}\selectfont$\alpha=p$'

unset label 1
unset label 2
unset label 3
unset label 4
unset label 5
#########################################################
set lmargin at screen 0.58
set rmargin at screen 0.98
set tmargin at screen 0.975
set bmargin at screen 0.585

set xrange [0.0:12]
set yrange [0.0:2.0]

set xtics ('\fontsize{10}{10} \selectfont$0$' 0, '\fontsize{10}{10} \selectfont$2$' 2,'\fontsize{10}{10} \selectfont$4$' 4, '\fontsize{10}{10} \selectfont$6$' 6, '\fontsize{10}{10} \selectfont$8$' 8, '\fontsize{10}{10} \selectfont$10$' 10, '\fontsize{10}{10} \selectfont$12$' 12) offset 0,0

set ytics ('\fontsize{10}{10} \selectfont$0.0$' 0.0, '\fontsize{10}{10} \selectfont$0.5$' 0.5, '\fontsize{8}{8} \selectfont$0.75$' 0.75, '\fontsize{10}{10} \selectfont$1.0$' 1.0, '\fontsize{10}{10} \selectfont$1.5$' 1.5, '\fontsize{10}{10} \selectfont$2.0$' 2.0) offset 0.5,0

set ylabel '\fontsize{10}{10}\selectfont$\langle S^{2}_{\alpha}\rangle$' offset 8.25,0.25
set xlabel '\fontsize{10}{10}\selectfont$U$' offset 0,0.25
set key spacing 1.5 at 4.25,1.6

set label 1 at 0.1,1.87 '\scalebox{1.25}{(b)}'
set label 2 at 2.0,0.5 '\fontsize{9}{9}\selectfont$NM$'
#set label 3 at 6.75,1.5 '\fontsize{9}{9}\selectfont$PM$'

#set label 4 at 9.5,0.875 '\fontsize{9}{9}\selectfont$(1,1)$'
set label 5 at 10,0.5 '\fontsize{9}{9}\selectfont$MI$'

set arrow nohead from 0.1,0.75 to 10.0,0.75 lt 1 dt 6 lw 3 lc rgb 'gray'

plot "../Data_Files/Local_spin_observes_m3.0.txt" u 1:2 w lp lw 2.0 lt 1 pt 7 ps 1.0 lc rgb 'red' ti '\fontsize{9}{9}\selectfont$s$', "../Data_Files/Local_spin_observes_m3.0.txt" u 1:3 w lp lw 2.5 lt 0 ps 1.0 pt 5 lc rgb 'blue' ti '\fontsize{9}{9}\selectfont$p$', "../Data_Files/Local_spin_observes_m3.0.txt" u 1:4 w lp lw 2.0 lt 1 ps 1.0 pt 7 lc rgb 'orange' ti '\fontsize{9}{9}\selectfont$tot.$'

unset label 1
unset label 2
unset label 3
unset label 4
unset label 5
unset arrow
#########################################################
set lmargin at screen 0.09
set rmargin at screen 0.48
set tmargin at screen 0.48
set bmargin at screen 0.09

set xrange [0.0:12]
set yrange [0.0:1.0]

#set xtics ('\fontsize{10}{10} \selectfont$0.01$' 0.01, '\fontsize{10}{10} \selectfont$0.05$' 0.05, '\fontsize{10}{10} \selectfont$0.1$' 0.1,'\fontsize{10}{10} \selectfont$0.5$' 0.5, '\fontsize{10}{10} \selectfont$1$' 1, '\fontsize{10}{10} \selectfont$5$' 5, '\fontsize{10}{10} \selectfont$10$' 10) offset 0,0

set xtics ('\fontsize{10}{10} \selectfont$0$' 0, '\fontsize{10}{10} \selectfont$2$' 2,'\fontsize{10}{10} \selectfont$4$' 4, '\fontsize{10}{10} \selectfont$6$' 6, '\fontsize{10}{10} \selectfont$8$' 8, '\fontsize{10}{10} \selectfont$10$' 10, '\fontsize{10}{10} \selectfont$12$' 12) offset 0,0

set ytics ('\fontsize{10}{10} \selectfont$0.0$' 0.0, '\fontsize{10}{10} \selectfont$0.2$' 0.2, '\fontsize{10}{10} \selectfont$0.4$' 0.4, '\fontsize{10}{10} \selectfont$0.6$' 0.6, '\fontsize{10}{10} \selectfont$0.8$' 0.8, '\fontsize{10}{10} \selectfont$1.0$' 1.0) offset 0.5,0

set xlabel '\fontsize{10}{10}\selectfont$U$' offset 0,0.25
set ylabel '\fontsize{10}{10}\selectfont$ S(\mathbf{q})$' offset 8.25,0

set key horizontal spacing 1.5 at 5.4,0.85

set label 1 at 0.1,0.93 '\scalebox{1.25}{(c)}'
set label 2 at 2,0.3 '\fontsize{9}{9}\selectfont$NM$'
set label 3 at 6.6,0.5 '\fontsize{9}{9}\selectfont$PM$'
set label 4 at 9.4,0.3 '\fontsize{9}{9}\selectfont$AFM$'

set arrow nohead from 6.5,0.0 to 6.5,1.0 lt 1 dt 6 lw 3 lc rgb 'black'
set arrow nohead from 8.5,0.0 to 8.5,1.0 lt 1 dt 6 lw 3 lc rgb 'black'

plot "../Data_Files/Sq_vs_U_observes_m3.0.txt" u 1:2 w lp lw 2.0 lt 1 ps 1.0 pt 7 lc rgb 'purple' ti '\fontsize{9}{9}\selectfont$ S(0,0) $', "../Data_Files/Sq_vs_U_observes_m3.0.txt" u 1:3 w lp lw 2.0 lt 1 ps 1.0 pt 7 lc rgb 'dark-green' ti '\fontsize{9}{9}\selectfont$ S(0,\pi) $', "../Data_Files/Sq_vs_U_observes_m3.0.txt" u 1:4 w lp lw 2.0 lt 1 ps 1.0 pt 7 lc rgb 'magenta' ti '\fontsize{9}{9}\selectfont$ S(\pi,0) $',  "../Data_Files/Sq_vs_U_observes_m3.0.txt" u 1:5 w lp lw 2.0 lt 1 ps 1.0 pt 7 lc rgb 'brown' ti '\fontsize{9}{9}\selectfont$ S(\pi,\pi) $'

unset label 1
unset label 2
unset label 3
unset label 4
unset arrow
unset ylabel
unset xlabel

#########################################################
set lmargin at screen 0.58
set rmargin at screen 0.98
set tmargin at screen 0.48
set bmargin at screen 0.09


set xrange [0:6]
set yrange [-1.1:1.1]

set xtics ('\fontsize{10}{10} \selectfont$0$' 0, '\fontsize{10}{10} \selectfont$1$' 1, '\fontsize{10}{10} \selectfont$2$' 2,'\fontsize{10}{10} \selectfont$3$' 3, '\fontsize{10}{10} \selectfont$4$' 4, '\fontsize{10}{10} \selectfont$5$' 5, '\fontsize{10}{10} \selectfont$6$' 6, '\fontsize{10}{10} \selectfont$14$' 14, '\fontsize{10}{10} \selectfont$16$' 16) offset 0,0

set ytics ('\fontsize{10}{10} \selectfont$0.0$' 0.0, '\fontsize{10}{10} \selectfont$0.3$' 0.3, '\fontsize{10}{10} \selectfont$0.6$' 0.6, '\fontsize{10}{10} \selectfont$0.9$' 0.9, '\fontsize{10}{10} \selectfont$-0.3$' -0.3, '\fontsize{10}{10} \selectfont$-0.6$' -0.6, '\fontsize{10}{10} \selectfont$-0.9$' -0.9, '\fontsize{10}{10} \selectfont$-1.2$' -1.2, '\fontsize{10}{10} \selectfont$1.2$' 1.2) offset 0.5,0

#set ytics ('\fontsize{10}{10} \selectfont$0.0$' 0.0, '\fontsize{10}{10} \selectfont$0.2$' 0.2, '\fontsize{10}{10} \selectfont$0.4$' 0.4, '\fontsize{10}{10} \selectfont$0.6$' 0.6, '\fontsize{10}{10} \selectfont$0.8$' 0.8, '\fontsize{10}{10} \selectfont$1.0$' 1.0, '\fontsize{10}{10} \selectfont$-0.2$' -0.2, '\fontsize{10}{10} \selectfont$-0.4$' -0.4, '\fontsize{10}{10} \selectfont$-0.6$' -0.6, '\fontsize{10}{10} \selectfont$-0.8$' -0.8, '\fontsize{10}{10} \selectfont$-1.0$' -1.0) offset 0.5,0

set key horizontal samplen 1 spacing 1 width -2.5 at 6,0.99

set ylabel '\fontsize{10}{10} $S(d)$' offset 9.1,0.25
set xlabel '\fontsize{11}{11}\selectfont$d$' offset 0,0.25
set xzeroaxis lw 3 lt 1 dt 3 lc rgb 'black'
set label 1 at 0.4,0.93 '\scalebox{1.25}{(d)}'

plot "../Data_Files/Sd_corr_vs_d_tot_U1.0_m3.0_4x4.txt" u 1:2 w lp lw 2.0 lt 1 ps 0.8 pt 7 lc rgb '#ccccff' ti '\fontsize{8}{8}\selectfont$ U=1.0 $',"../Data_Files/Sd_corr_vs_d_tot_U6.0_m3.0_4x4.txt" u 1:2 w lp lw 2.0 lt 1 ps 0.8 pt 7 lc rgb '#8e44ad' ti '\fontsize{8}{8}\selectfont$ U=6.0 $',"../Data_Files/Sd_corr_vs_d_tot_U7.5_m3.0_4x4.txt" u 1:2 w lp lw 2.0 lt 1 ps 0.8 pt 7 lc rgb '#d4ac0d' ti '\fontsize{8}{8}\selectfont$ U=7.5$',"../Data_Files/Sd_corr_vs_d_tot_U8.0_m3.0_4x4.txt" u 1:2 w lp lw 2.0 lt 1 ps 0.8 pt 7 lc rgb 'black' ti '\fontsize{8}{8}\selectfont$ U=8.0 $'

unset label 1
unset xlabel
unset ylabel

set ytics ('' 0.0, '' 0.3, '' 0.6, '' 0.9, '' -0.3, '' -0.6, '' -0.9, '' -1.2, '' 1.2) offset 0.5,0
set xtics ('' 0, '' 1, '' 2,'' 3, '' 4, '' 5, '' 6) offset 0,0


set key horizontal samplen 1 spacing 1 width -2.5 at 6,-0.39
plot "../Data_Files/Sd_corr_vs_d_tot_U8.5_m3.0_4x4.txt" u 1:2 w lp lw 2.0 lt 1 ps 0.8 pt 7 lc rgb '#3498db' ti '\fontsize{8}{8}\selectfont$ U=8.5 $',"../Data_Files/Sd_corr_vs_d_tot_U8.75_m3.0_4x4.txt" u 1:2 w lp lw 2.0 lt 1 ps 0.8 pt 7 lc rgb '#2ecc71' ti '\fontsize{8}{8}\selectfont$ U=8.75$',"../Data_Files/Sd_corr_vs_d_tot_U9.0_m3.0_4x4.txt" u 1:2 w lp lw 2.0 lt 1 ps 0.8 pt 7 lc rgb '#d35400' ti '\fontsize{8}{8}\selectfont$ U=9.0 $',"../Data_Files/Sd_corr_vs_d_tot_U12.0_m3.0_4x4.txt" u 1:2 w lp lw 2.0 lt 1 ps 0.8 pt 7 lc rgb '#34495e' ti '\fontsize{8}{8}\selectfont$ U=12.0 $'

unset multiplot
