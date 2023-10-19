set terminal epslatex size 3,2.35 standalone color colortext 8
set output 'ni_finite_size_scaling_at_U1p0.tex'

set multiplot
#########################################################
set lmargin at screen 0.15
set rmargin at screen 0.97
set tmargin at screen 0.9
set bmargin at screen 0.13

set xrange [0:24]
set yrange [-0.12:0.12]

set xtics ('\fontsize{10}{10} \selectfont$0$' 0, '\fontsize{10}{10} \selectfont$4$' 4, '\fontsize{10}{10} \selectfont$8$' 8,'\fontsize{10}{10} \selectfont$12$' 12, '\fontsize{10}{10} \selectfont$16$' 16, '\fontsize{10}{10} \selectfont$20$' 20, '\fontsize{10}{10} \selectfont$24$' 24) offset 0,0

set ytics ('\fontsize{10}{10} \selectfont$0.00$' 0.00, '\fontsize{10}{10} \selectfont$0.03$' 0.03, '\fontsize{10}{10} \selectfont$0.06$' 0.06,'\fontsize{10}{10} \selectfont$0.09$' 0.09, '\fontsize{10}{10} \selectfont$0.12$' 0.12, '\fontsize{10}{10} \selectfont$-0.03$' -0.03, '\fontsize{10}{10} \selectfont$-0.06$' -0.06,'\fontsize{10}{10} \selectfont$-0.09$' -0.09, '\fontsize{10}{10} \selectfont$-0.12$' -0.12) offset 0.5,0

#set ytics ('\fontsize{8}{8} \selectfont$0.00$' 0.00, '\fontsize{8}{8} \selectfont$0.02$' 0.02, '\fontsize{8}{8} \selectfont$0.04$' 0.04,'\fontsize{8}{8} \selectfont$0.06$' 0.06, '\fontsize{8}{8} \selectfont$0.08$' 0.08, '\fontsize{8}{8} \selectfont$0.10$' 0.10, '\fontsize{8}{8} \selectfont$-0.02$' -0.02, '\fontsize{8}{8} \selectfont$-0.04$' -0.04,'\fontsize{8}{8} \selectfont$-0.06$' -0.06, '\fontsize{8}{8} \selectfont$-0.08$' -0.08, '\fontsize{8}{8} \selectfont$-0.10$' -0.10,) offset 0.5,0

set x2tics('\fontsize{10}{10} \selectfont$0$' 4, '\fontsize{10}{10} \selectfont$4$' 8, '\fontsize{10}{10} \selectfont$8$' 12,'\fontsize{10}{10} \selectfont$12$' 16, '\fontsize{10}{10} \selectfont$16$' 20) tc rgb '#DE3163'  offset -0.1,-0.6

set ylabel '\fontsize{10}{10} $\langle \tilde{n}_{i,\alpha}\rangle$' offset 9,0
set xlabel '\fontsize{10}{10}\selectfont$i=r_y+L_y*r_x$' offset 0,0.4
set x2label '\fontsize{10}{10}\selectfont$i=r_y+L_y*r_x$' tc rgb '#DE3163' offset 0,-1

set key samplen 0.5 spacing 0.85 at 15.85,-0.06
set xzeroaxis lw 3 lt 1 dt 3 lc rgb 'black'

plot "../Data_Files/ni_vs_i_orb0_U1.0_m1.75_4x4.txt" u (($1)+4):2 w lp lw 3 lt 1 dt 3 ps 1.0 pt 6 lc rgb 'red' ti '\fontsize{8}{8}\selectfont $\alpha=s$, $4\times 4$',"../Data_Files/ni_vs_i_orb1_U1.0_m1.75_4x4.txt" u (($1)+4):2 w lp lw 3 lt 1 dt 3 ps 1.0 pt 4 lc rgb 'blue' ti '\fontsize{8}{8}\selectfont $\alpha=p$, $4\times 4$', "../Data_Files/ni_vs_i_orb0_U1.0_m1.75_6x4.txt" u 1:2 w lp lw 3 lt 1 ps 1.0 pt 7 lc rgb 'red' ti '\fontsize{8}{8}\selectfont $\alpha=s$, $6\times 4$',"../Data_Files/ni_vs_i_orb1_U1.0_m1.75_6x4.txt" u 1:2 w lp lw 3 lt 1 ps 1.0 pt 5 lc rgb 'blue' ti '\fontsize{8}{8}\selectfont $\alpha=p$, $6\times 4$'




#set label 2 at 18,0.0725 '\fontsize{8}{8}\selectfont$m=1.0$'

#set label 3 at 0.4,0.1275 '\scalebox{1.25}{(b)}'

#set object rect from 7.5,-0.03 to 15.5,0.03 fs solid 0.55 noborder fc rgb "#73d2f6" behind 

#plot "Data_Files/ni_vs_i_m1.75.txt" u 1:($2)-0.158729 w lp lw 2.0 lt 1 ps 0.8 pt 7 lc rgb 'red' ti '\fontsize{8}{8}\selectfont $\alpha=s$, $m=1.75$', "Data_Files/ni_vs_i_m1.75.txt" u 1:($3)-1.84115 w lp lw 2.0 lt 1 ps 0.8 pt 5 lc rgb 'blue' ti '\fontsize{8}{8}\selectfont $\alpha=p$, $m=1.75$',"Data_Files/ni_vs_i_m3.0.txt" u 1:($2)-0.00634586 w lp lw 2.0 lt 1 ps 0.8 pt 6 lc rgb 'red' ti '\fontsize{8}{8}\selectfont $\alpha=s$, $m=3.0$', "Data_Files/ni_vs_i_m3.0.txt" u 1:($3)-1.99364 w lp lw 2.0 lt 1 ps 0.8 pt 4 lc rgb 'blue' ti '\fontsize{8}{8}\selectfont $\alpha=p$, $m=3.0$'

unset multiplot

