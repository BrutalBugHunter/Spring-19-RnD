set term postscript color eps
set grid
#set style fill solid 1.00 border lt -1
set xtics font "Times-Roman, 30" offset 0,-0.5,0
set ytics font "Times-Roman, 30" offset 0,-0.5,0
set key font "Times-Roman,25" width 5 spacing 3
set key inside right bottom vertical Right noreverse autotitles nobox
set style line 1 lc rgb '#dd181f' lt 4 lw 9 pt 3 ps 1.5   # --- red
set style line 2 lc rgb '#dd181f' lt 2 lw 9 pt 9 ps 1.5   # --- red
set style line 3 lc rgb 'blue' lt 1 lw 9 pt 7 ps 1.5   # --- blue
set style line 4 lc rgb 'blue' lt 5 lw 9 pt 5 ps 1.5   # --- blue
set style line 5 lc rgb 'green' lt 2 lw 9 pt 9 ps 1.5   # --- red
set output 'replica_scale.eps'
#unset key
#set title "Overload detection in 4 core HSS"
#set ytics 6,1,22
set bmargin 5
set lmargin 8
set parametric
#set y2tics font "Times-Roman, 25" offset 0,-0.5,0
#set ytics 0,50,450
     set yrange [ 0:40]
      #  set y2range [ 0:100]
      set xrange [0:8]
      set xlabel "No.of VMs" font "Times-Roman,25" offset 0,-1,0
      set ylabel "Throughput(Gbps)" font "Times-Roman,25" offset -0.5,-1,0
        #set y2label "CPU Utilization"
        #set ytics nomirror
      plot "replica_scale.txt" using 1:2  with linespoints ls 1 title 'Throughput: long',\
            "replica_scale.txt" using 1:6  with linespoints ls 4 title 'Throughput short'
