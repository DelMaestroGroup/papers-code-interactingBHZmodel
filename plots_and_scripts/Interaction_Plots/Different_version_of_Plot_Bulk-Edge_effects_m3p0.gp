set terminal epslatex size 3.0,1.9 standalone color colortext 8
set output 'Bulk_Edge_moments_and_occupation_for_m3p0_4x4.tex'

set multiplot
#########################################################
set lmargin at screen 0.16
set rmargin at screen 0.85
set tmargin at screen 0.97
set bmargin at screen 0.15

set xrange [0:12]
set yrange [-0.12:0.045]
set y2range [-0.24:0.09]

set xtics ('\fontsize{7}{7} \selectfont$0$' 0, '\fontsize{7}{7} \selectfont$2$' 2,'\fontsize{7}{7} \selectfont$4$' 4, '\fontsize{7}{7} \selectfont$6$' 6, '\fontsize{7}{7} \selectfont$8$' 8, '\fontsize{7}{7} \selectfont$10$' 10, '\fontsize{7}{7} \selectfont$12$' 12) offset 0,0


set ytics ('\fontsize{7}{7} \selectfont$0.04$' 0.04, '\fontsize{7}{7} \selectfont$0.02$' 0.02, '\fontsize{7}{7} \selectfont$0.00$' 0.00, '\fontsize{7}{7} \selectfont$-0.02$' -0.02,'\fontsize{7}{7} \selectfont$-0.04$' -0.04, '\fontsize{7}{7} \selectfont$-0.06$' -0.06, '\fontsize{7}{7} \selectfont$-0.08$' -0.08, '\fontsize{7}{7} \selectfont$-0.10$' -0.10, '\fontsize{7}{7} \selectfont$-0.12$' -0.12) offset 0.5,0

set ytics nomirror


set y2tics ('\fontsize{7}{7} \selectfont$~~0.08$' 0.08, '\fontsize{7}{7} \selectfont$~~0.04$' 0.04, '\fontsize{7}{7} \selectfont$~~0.00$' 0.00, '\fontsize{7}{7} \selectfont$-0.04$' -0.04, '\fontsize{7}{7} \selectfont$-0.08$' -0.08, '\fontsize{7}{7} \selectfont$-0.12$' -0.12, '\fontsize{7}{7} \selectfont$-0.16$' -0.16, '\fontsize{7}{7} \selectfont$-0.20$' -0.20,'\fontsize{7}{7} \selectfont$-0.24$' -0.24) offset -1.4,0

set format y2 "% 10.0f"

set ylabel '\fontsize{7}{7} $\sum_{i \in edge}\langle \tilde{n}_{i,0}\rangle/N_e$' tc rgb 'brown' offset 6.7,0
set xlabel '\fontsize{8}{8}\selectfont$U$' offset 0,0.4
set y2label '\fontsize{7}{7} $\langle S^2_{edge}\rangle-\langle S^2_{bulk}\rangle$' tc rgb 'black' offset -8.3,0

set key samplen 1.5 spacing 1.0 at 11.25,-0.02
set xzeroaxis lw 3 lt 1 dt 3 lc rgb 'black'

set label 2 at 2,0.03 '\fontsize{7}{7}\selectfont$m=3.0$'
set object rect from 6.0,-0.12 to 8.15,0.045 fs solid 0.25 noborder fc rgb "red" behind
set object rect from 8.15,-0.12 to 9.0,0.045 fs solid 0.25 noborder fc rgb "blue" behind



plot "../Data_Files/Edge_minus_Bulk_occupation_for_orb0_vs_U_m3.0.txt" u 1:2 w lp lw 2.5 lt 1 ps 0.7 pt 7 lc rgb 'brown' axes x1y1 ti '',"../Data_Files/Bulk-Edge_spin_observes_m3.0.txt" u 1:($2)-($3) w lp lw 2.5 lt 1 dt 3 ps 0.7 pt 6 lc rgb 'black' axes x2y2 ti ''



unset multiplot

