set terminal epslatex size 3.5,2.2 standalone color colortext 8
set output 'Avgd_LDOE_for_diff_Vo_A1p0_B0p5_M0p25_Vo_0p2_100x4_SBC.tex'

set multiplot
#########################################################
set lmargin at screen 0.17
set rmargin at screen 0.95
set ylabel '\fontsize{10}{10} $\langle n^{s}_{O\times P}\rangle - \langle n^{s}_{P\times P}\rangle$' offset 6,0
set xlabel '\fontsize{10}{10} $r_{x}$'
set xrange [50:100]
set yrange [-0.02:0.1]

set ytics ('\fontsize{10}{10} $0.00$' 0.00, '\fontsize{10}{10} $0.02$' 0.02, '\fontsize{10}{10} $0.04$' 0.04, '\fontsize{10}{10} $0.06$' 0.06, '\fontsize{10}{10} $0.08$' 0.08, '\fontsize{10}{10} $0.10$' 0.10, '\fontsize{10}{10} $-0.02$' -0.02, '\fontsize{10}{10} $-0.04$' -0.04, '\fontsize{10}{10} $-0.06$' -0.06, '\fontsize{10}{10} $-0.08$' -0.08, '\fontsize{10}{10} $-0.10$' -0.10)

set xtics ('\fontsize{10}{10} $0$' 0, '\fontsize{10}{10} $10$' 10, '\fontsize{10}{10} $20$' 20, '\fontsize{10}{10} $30$' 30, '\fontsize{10}{10} $40$' 40, '\fontsize{10}{10} $50$' 50, '\fontsize{10}{10} $60$' 60, '\fontsize{10}{10} $70$' 70, '\fontsize{10}{10} $80$' 80, '\fontsize{10}{10} $90$' 90, '\fontsize{10}{10} $100$' 100) offset 0,0

set xzeroaxis lw 4 linetype 0 lc rgb "black"
set key at 95,0.095 horizontal spacing 1.5

set label 1 '\fontsize{10}{10} $A=1.0$, $B=0.5$, $M=0.25$' at 52,0.035
set label 2 '\fontsize{10}{10} $100\times 4$, $w=20$' at 60,0.025

plot "<paste Avg_LDOE_along_x_OxP.txt Avg_LDOE_along_x_PxP.txt" u 1:((($2)+($3)-($7)-($8))) w lp ps 0.6 pt 7 lc rgb 'red' ti '\fontsize{10}{10} $V_o=0.0$', "<paste Avg_LDOE_along_x_W20_Vo0.1.txt Avg_LDOE_along_x_PxP.txt" u 1:((($2)+($3)-($7)-($8))) w lp ps 0.6 pt 7 lc rgb 'blue' ti '\fontsize{10}{10} $V_o=0.1$',"<paste Avg_LDOE_along_x_W20_Vo0.2.txt Avg_LDOE_along_x_PxP.txt" u 1:((($2)+($3)-($7)-($8))) w lp ps 0.6 pt 7 lc rgb 'green' ti '\fontsize{10}{10} $V_o=0.2$', "<paste Avg_LDOE_along_x_W20_Vo0.3.txt Avg_LDOE_along_x_PxP.txt" u 1:((($2)+($3)-($7)-($8))) w lp ps 0.6 pt 7 lc rgb 'blue' ti '\fontsize{10}{10} $V_o=0.3$', "<paste Avg_LDOE_along_x_W20_Vo0.4.txt Avg_LDOE_along_x_PxP.txt" u 1:((($2)+($3)-($7)-($8))) w lp ps 0.6 pt 7 lc rgb 'orange' ti '\fontsize{10}{10} $V_o=0.4$', "<paste Avg_LDOE_along_x_W20_Vo0.5.txt Avg_LDOE_along_x_PxP.txt" u 1:((($2)+($3)-($7)-($8))) w lp ps 0.6 pt 7 lc rgb 'brown' ti '\fontsize{10}{10} $V_o=0.5$', "<paste Avg_LDOE_along_x_W20_Vo0.6.txt Avg_LDOE_along_x_PxP.txt" u 1:((($2)+($3)-($7)-($8))) w lp ps 0.6 pt 7 lc rgb 'magenta' ti '\fontsize{10}{10} $V_o=0.6$'

#############################################################
unset multiplot