set terminal epslatex size 3,2.1 standalone color colortext 8
set output 'ni_for_m3p0_4x4.tex'

set multiplot
#########################################################
set lmargin at screen 0.135
set rmargin at screen 0.97
set tmargin at screen 0.97
set bmargin at screen 0.15

set xrange [0:16]
set yrange [-0.125:0.125]

#set xtics ('\fontsize{8}{8} \selectfont$0$' 0, '\fontsize{8}{8} \selectfont$4$' 4, '\fontsize{8}{8} \selectfont$8$' 8,'\fontsize{8}{8} \selectfont$12$' 12, '\fontsize{8}{8} \selectfont$16$' 16, '\fontsize{8}{8} \selectfont$20$' 20, '\fontsize{8}{8} \selectfont$24$' 24) offset 0,0

set ytics ('\fontsize{8}{8} \selectfont$0.00$' 0.00, '\fontsize{8}{8} \selectfont$0.03$' 0.03, '\fontsize{8}{8} \selectfont$0.06$' 0.06,'\fontsize{8}{8} \selectfont$0.09$' 0.09, '\fontsize{8}{8} \selectfont$0.12$' 0.12, '\fontsize{8}{8} \selectfont$-0.03$' -0.03, '\fontsize{8}{8} \selectfont$-0.06$' -0.06,'\fontsize{8}{8} \selectfont$-0.09$' -0.09, '\fontsize{8}{8} \selectfont$-0.12$' -0.12) offset 0.5,0

#set ytics ('\fontsize{8}{8} \selectfont$0.00$' 0.00, '\fontsize{8}{8} \selectfont$0.02$' 0.02, '\fontsize{8}{8} \selectfont$0.04$' 0.04,'\fontsize{8}{8} \selectfont$0.06$' 0.06, '\fontsize{8}{8} \selectfont$0.08$' 0.08, '\fontsize{8}{8} \selectfont$0.10$' 0.10, '\fontsize{8}{8} \selectfont$-0.02$' -0.02, '\fontsize{8}{8} \selectfont$-0.04$' -0.04,'\fontsize{8}{8} \selectfont$-0.06$' -0.06, '\fontsize{8}{8} \selectfont$-0.08$' -0.08, '\fontsize{8}{8} \selectfont$-0.10$' -0.10,) offset 0.5,0

set xtics('\fontsize{8}{8} \selectfont$0$' 0, '\fontsize{8}{8} \selectfont$4$' 4, '\fontsize{8}{8} \selectfont$8$' 8,'\fontsize{8}{8} \selectfont$12$' 12, '\fontsize{8}{8} \selectfont$16$' 16)  offset 0.0

set ylabel '\fontsize{8}{8} $\langle \tilde{n}_{i,\alpha}\rangle$' offset 7.6,0
set xlabel '\fontsize{8}{8}\selectfont$i=r_y+L_y*r_x$' offset 0,0.4
#set x2label '\fontsize{8}{8}\selectfont$i=r_y+L_y*r_x$' tc rgb '#DE3163' offset 0,-1

set key samplen 1.5 spacing 1.0 at 11.25,-0.02
set xzeroaxis lw 3 lt 1 dt 3 lc rgb 'black'

set label 2 at 6,0.1 '\fontsize{8}{8}\selectfont$m=3.0$'

plot "../Data_Files/ni_vs_i_orb0_U1.0_m3.0_4x4.txt" u 1:2 w lp lw 3 lt 1 dt 3 ps 1.0 pt 6 lc rgb 'red' ti '\fontsize{8}{8}\selectfont $\alpha=s,~U=1.0$',"../Data_Files/ni_vs_i_orb1_U1.0_m3.0_4x4.txt" u 1:2 w lp lw 3 lt 1 dt 3 ps 1.0 pt 4 lc rgb 'blue' ti '\fontsize{8}{8}\selectfont $\alpha=p,~U=1.0$',"../Data_Files/ni_vs_i_orb0_U7.5_m3.0_4x4.txt" u 1:2 w lp lw 3 lt 1 ps 1.0 pt 7 lc rgb 'red' ti '\fontsize{8}{8}\selectfont $\alpha=s,~U=7.5$',"../Data_Files/ni_vs_i_orb1_U7.5_m3.0_4x4.txt" u 1:2 w lp lw 3 lt 1 ps 1.0 pt 5 lc rgb 'blue' ti '\fontsize{8}{8}\selectfont $\alpha=p,~U=7.5$', "../Data_Files/ni_vs_i_orb0_U8.5_m3.0_4x4.txt" u 1:2 w lp lw 3 lt 1 dt 12 ps 1.0 pt 7 lc rgb 'red' ti '\fontsize{8}{8}\selectfont $\alpha=s,~U=8.5$',"../Data_Files/ni_vs_i_orb1_U8.5_m3.0_4x4.txt" u 1:2 w lp lw 3 lt 1 dt 12 ps 1.0 pt 5 lc rgb 'blue' ti '\fontsize{8}{8}\selectfont $\alpha=p,~U=8.5$',


unset multiplot

