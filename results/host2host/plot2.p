set term postscript color eps
set grid
#set style fill solid 1.00 border lt -1
set xtics font "Times-Roman, 25" offset 0,-0.5,0
set ytics font "Times-Roman, 25" offset 0,-0.5,0
set key font "Times-Roman,15" width 5 spacing 3
set key inside right top vertical Right noreverse autotitles nobox
set style line 1 lc rgb '#dd181f' lt 4 lw 3 pt 3 ps 2   # --- red
set style line 2 lc rgb '#006400' lt 2 lw 3 pt 9 ps 2   # --- red
set style line 3 lc rgb '#0060ad' lt 1 lw 3 pt 7 ps 2   # --- blue
set output 'host_plot.eps'
#unset key
#set title "Overload detection in 4 core HSS"
#set ytics 6,1,22
set bmargin 5
set lmargin 8
set parametric
#set t [0:600]
#set ytics 0,50,450
set y2tics font "Times-Roman, 25" offset 0,-0.5,0
set y2label 'Number of failures/sec' font "Times-Roman,25" offset 0,1.5,0
     #set trange [ 0:600]
     #set xrange [0:355]
      set xlabel "Seconds elapsed" font "Times-Roman,25" offset 0,-1,0
      set ylabel "Throughput(req/sec)" font "Times-Roman,25"
      plot "core_scale_host.txt" using 1:2 axis x1y1 with linespoints ls 1 title 'throughput at B', \
      "core_scale_host.txt" using 1:3  axis x1y2 with linespoints ls 2 title 'failures at A'
     # 64,t lt 1 lc 3 lw 3 title '', \
    #  245,t lt 1 lc 3 lw 3 title ''
