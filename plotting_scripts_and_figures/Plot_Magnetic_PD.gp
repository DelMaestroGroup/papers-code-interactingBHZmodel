set terminal epslatex size 3,3 standalone color colortext 8
set output 'Magnetic_phase_diagram_Nx4_BHZ.tex'

set multiplot
#########################################################
set lmargin at screen 0.13
set rmargin at screen 0.955
set tmargin at screen 0.96
set bmargin at screen 0.1

set xtics ('\fontsize{10}{10} $0.0$' 0.0, '\fontsize{10}{10} $2.0$' 2.0, '\fontsize{10}{10} $4.0$' 4.0, '\fontsize{10}{10} $6.0$' 6.0, '\fontsize{10}{10} $8.0$' 8.0, '\fontsize{10}{10} $10.0$' 10.0, '\fontsize{10}{10} $12.0$' 12.0) offset 0,-0.1

set ytics ('\fontsize{10}{10} $0.0$' 0.0, '\fontsize{10}{10} $1.0$' 1.0, '\fontsize{10}{10} $2.0$' 2.0, '\fontsize{10}{10} $3.0$' 3.0, '\fontsize{10}{10} $4.0$' 4.0) offset 0,0

#set ytics ('\fontsize{15}{15} $0.0$' 0.0, '\fontsize{15}{15} $0.5$' 0.5, '\fontsize{15}{15} $1.0$' 1.0, '\fontsize{15}{15} $1.5$' 1.5, '\fontsize{15}{15} $2.0$' 2.0, '\fontsize{15}{15} $2.5$' 2.5,'\fontsize{15}{15} $3.0$' 3.0, '\fontsize{15}{15} $3.5$' 3.5,'\fontsize{15}{15} $4.0$' 4.0, '\fontsize{15}{15} $4.5$' 4.5) offset 0,0

set ylabel '\fontsize{12}{12} $m$' offset 6.5,0
set xlabel '\fontsize{12}{12} $U$' offset 2.5,0.2
set yrange [0:4.5]
set xrange [0:12]

set label 1 at 2.0,3.5 '\fontsize{8}{8}\selectfont$BI+NM$'
set label 2 at 1.0,1.0 '\fontsize{8}{8}\selectfont$PM+T1$'
set label 3 at 6.0,2.0 rotate by 50 '\fontsize{8}{8}\selectfont$AFM+T2$'
set label 4 at 8.0,1.25 '\fontsize{8}{8}\selectfont$MI+AFM$'

plot "Data_Files/NM_phase_points.txt" u 1:2 w p ps 0.8 pt 7 lc rgb 'green' ti '',"Data_Files/PM_phase_points.txt" u 1:2 w p ps 0.8 pt 7 lc rgb 'red' ti '', "Data_Files/AFM_only_phase_points.txt" u 1:2 w p ps 0.8 pt 7 lc rgb 'blue' ti '',"Data_Files/MI_AFM_phase_points.txt" u 1:2 w p ps 0.8 pt 7 lc rgb 'magenta' ti ''




#############################################################
unset multiplot
