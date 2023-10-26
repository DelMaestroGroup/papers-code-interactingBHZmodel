set terminal epslatex size 3.5,3.5 standalone color colortext 8
set output 'Magnetic_phase_diagram_Nx4_BHZ.tex'

set multiplot
#########################################################
set lmargin at screen 0.1
set rmargin at screen 0.96
set tmargin at screen 0.96
set bmargin at screen 0.1

set xtics ('\fontsize{10}{10} $0.0$' 0.0, '\fontsize{10}{10} $2.0$' 2.0, '\fontsize{10}{10} $4.0$' 4.0, '\fontsize{10}{10} $6.0$' 6.0, '\fontsize{10}{10} $8.0$' 8.0, '\fontsize{10}{10} $10.0$' 10.0, '\fontsize{10}{10} $12.0$' 12.0) offset 0,-0.1

#set ytics ('\fontsize{10}{10} $0.0$' 0.0, '\fontsize{10}{10} $1.0$' 1.0, '\fontsize{10}{10} $2.0$' 2.0, '\fontsize{10}{10} $3.0$' 3.0, '\fontsize{10}{10} $4.0$' 4.0) offset 0,0

set ytics ('\fontsize{10}{10} $0.0$' 0.0, '\fontsize{10}{10} $0.5$' 0.5, '\fontsize{10}{10} $1.0$' 1.0, '\fontsize{10}{10} $1.5$' 1.5, '\fontsize{10}{10} $2.0$' 2.0, '\fontsize{10}{10} $2.5$' 2.5,'\fontsize{10}{10} $3.0$' 3.0, '\fontsize{10}{10} $3.5$' 3.5,'\fontsize{10}{10} $4.0$' 4.0, '\fontsize{10}{10} $4.5$' 4.5) offset 0.5,0

set ylabel '\fontsize{11}{11} $m$' offset 7.5,0
set xlabel '\fontsize{11}{11} $U$' offset 2.5,0.2
set yrange [0:4.5]
set xrange [0:12]

set label 1 at 2.0,3.35 '\fontsize{8}{8}\selectfont$NM$ $BI$'
set label 2 at 0.5,1.12 '\fontsize{8}{8}\selectfont$PM$ $T1$'
set label 3 at 7.5,2.5 rotate by 47 '\fontsize{5}{5}\selectfont$AFM$ $T2$'
set label 4 at 8.0,1.25 '\fontsize{8}{8}\selectfont$AFM$ $MI$'

plot "../Data_Files/FS_phase_points.txt" u 1:2 w p ps 1.2 pt 5 lc rgb '#909497' ti '',"../Data_Files/NM_phase_points.txt" u 1:2 w p ps 0.8 pt 7 lc rgb 'green' ti '',"../Data_Files/PM_phase_points.txt" u 1:2 w p ps 0.8 pt 7 lc rgb 'red' ti '', "../Data_Files/AFM_only_phase_points.txt" u 1:2 w p ps 0.8 pt 7 lc rgb 'blue' ti '',"../Data_Files/MI_AFM_phase_points.txt" u 1:2 w p ps 0.8 pt 7 lc rgb 'magenta' ti '',"../Data_Files/PM_Non-Converged_phase_points.txt" u 1:2 w p ps 0.7 pt 6 lc rgb 'red' ti '',"../Data_Files/AFM_Non-Converged_phase_points.txt" u 1:2 w p ps 0.7 pt 6 lc rgb 'blue' ti '',"../Data_Files/MI_Non-Converged_phase_points.txt" u 1:2 w p ps 0.7 pt 6 lc rgb 'magenta' ti ''

#,"../Data_Files/Remaining_points.txt" u 1:2 w p ps 0.8 pt 2 lc rgb 'black' ti ''




#############################################################
unset multiplot
