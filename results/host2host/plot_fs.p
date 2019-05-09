set term postscript color eps
set grid
#set style fill solid 1.00 border lt -1
set xtics font "Times-Roman, 30" offset 0,-0.5,0
set ytics font "Times-Roman, 30" offset 0,-0.5,0
set key font "Times-Roman,25" width 5 spacing 3
set key inside left top vertical Right noreverse autotitles nobox
set style line 1 lc rgb '#dd181f' lt 4 lw 9 pt 3 ps 1.5   # --- red
set style line 2 lc rgb '#006400' lt 4 lw 9 pt 3 ps 1.5   # --- red
set style line 3 lc rgb 'blue' lt 1 lw 9 pt 7 ps 1.5   # --- blue
set style line 4 lc rgb 'chocolate' lt 1 lw 9 pt 7 ps 1.5   # --- blue
set style line 5 lc rgb 'purple' lt 3 lw 9 pt 3 ps 1.5   # --- blue
set output 'connection_core_scale_compare.eps'
#unset key
#set title "Overload detection in 4 core HSS"
#set ytics 6,1,22
set bmargin 5
set lmargin 8
#set parametric
#set y2tics font "Times-Roman, 25" offset 0,-0.5,0
#set ytics 0,50,450
    # set yrange [ 6:22]
 #       set trange [ 0:100]
      set xrange [0:16]
      set xlabel "No.of Cores" font "Times-Roman,25" offset 0,-1,0
      set ylabel "Throughput(Gbps)" font "Times-Roman,25" offset -0.5,-1,0
  #      set y2label "CPU Utilization"
        #set ytics nomirror
      plot "64B.txt" using 1:2  with linespoints ls 1 title 'short connection h/w distribution', "64B.txt" using 1:4  with linespoints ls 2  title 'short connection s/w distribution', \
      "1024B.txt" using 1:2  with linespoints ls 3 title 'mediocre connection h/w distribution', "1024B.txt" using 1:4  with linespoints ls 5  title ' mediocre connection s/w distribution'
 #     "core_8.txt" using 1:2  with linespoints ls 3 title '8 core H/W distribution', "core_8.txt" using 1:4  with linespoints ls 3  title '8 core S/W distribution', \
  #    "core_16.txt" using 1:2  with linespoints ls 4 title '16 core H/W distribution', "core_16.txt" using 1:4  with linespoints ls 4  title '16 core S/W distribution'
