set terminal epslatex size 3,2.25 standalone color colortext 8
set output 'Single_site_eigens_vs_U.tex'

set multiplot
#########################################################
set lmargin at screen 0.13
set rmargin at screen 0.955
set tmargin at screen 0.96
set bmargin at screen 0.13

set xrange [0:12]
set yrange [-8:12]

set xtics ('\fontsize{9}{9} $0.0$' 0.0, '\fontsize{9}{9} $2.0$' 2.0, '\fontsize{9}{9} $4.0$' 4.0, '\fontsize{9}{9} $6.0$' 6.0, '\fontsize{9}{9} $8.0$' 8.0, '\fontsize{9}{9} $10.0$' 10.0, '\fontsize{9}{9} $12.0$' 12.0) offset 0,0.2

set ytics ('\fontsize{9}{9} $-8.0$' -8.0, '\fontsize{9}{9} $-6.0$' -6.0,'\fontsize{9}{9} $-4.0$' -4.0, '\fontsize{9}{9} $-2.0$' -2.0, '\fontsize{9}{9} $0.0$' 0.0, '\fontsize{9}{9} $2.0$' 2.0, '\fontsize{9}{9} $4.0$' 4.0, '\fontsize{9}{9} $6.0$' 6.0, '\fontsize{9}{9} $8.0$' 8.0, '\fontsize{9}{9} $10.0$' 10.0, '\fontsize{9}{9} $12.0$' 12.0) offset 0.5,0

#set ytics ('\fontsize{15}{15} $0.0$' 0.0, '\fontsize{15}{15} $0.5$' 0.5, '\fontsize{15}{15} $1.0$' 1.0, '\fontsize{15}{15} $1.5$' 1.5, '\fontsize{15}{15} $2.0$' 2.0, '\fontsize{15}{15} $2.5$' 2.5,'\fontsize{15}{15} $3.0$' 3.0, '\fontsize{15}{15} $3.5$' 3.5,'\fontsize{15}{15} $4.0$' 4.0, '\fontsize{15}{15} $4.5$' 4.5) offset 0,0

set ylabel '\fontsize{10}{10} $E$' offset 6.0,0
set xlabel '\fontsize{10}{10} $U$' offset 0,0.3

set xzeroaxis lw 3 lt 1 dt 3 lc rgb 'black'
set arrow nohead from 8.5,-8.0 to 8.5,4.0 lw 3 lt 1 dt 6 lc rgb 'black'

set dummy U

f(U) = -3*0.25*U+U
g(U) = -0.25*U+U
h(U,m) = -sqrt((0.25*U)*(0.25*U)+4*m*m) + U
k(U,m) = sqrt((0.25*U)*(0.25*U)+4*m*m) + U

set label 1 at 5.0,1.7 rotate by 9 '\fontsize{7}{7}\selectfont$U-3J_H$' tc rgb '#8e44ad'
set label 2 at 10.0,8.1 rotate by 20 '\fontsize{7}{7}\selectfont$U-J_H$' tc rgb '#17a589'
set label 3 at 2.0,-5.1 rotate by 23 '\fontsize{7}{7}\selectfont$U-\sqrt{J_H^2+4m^2}$' tc rgb '#d35400'
set label 4 at 1.0,5.8 rotate by 25 '\fontsize{7}{7}\selectfont$U+\sqrt{J_H^2+4m^2}$' tc rgb '#3498db'


plot f(U) w l lw 3 lt 1 lc rgb '#8e44ad' ti '', g(U) w l lw 3 lt 1 lc rgb '#17a589' ti '', h(U,3.0) w l lw 3 lt 1 lc rgb '#d35400' ti '', k(U,3.0) w l lw 3 lt 1 lc rgb '#3498db' ti ''

#plot "Data_Files/NM_phase_points.txt" u 1:2 w p ps 0.8 pt 7 lc rgb 'green' ti '',"Data_Files/PM_phase_points.txt" u 1:2 w p ps 0.8 pt 7 lc rgb 'red' ti '', "Data_Files/AFM_only_phase_points.txt" u 1:2 w p ps 0.8 pt 7 lc rgb 'blue' ti '',"Data_Files/MI_AFM_phase_points.txt" u 1:2 w p ps 0.8 pt 7 lc rgb 'magenta' ti ''




#############################################################
unset multiplot
