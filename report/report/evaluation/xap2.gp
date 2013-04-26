set term tikz color solid createstyle
set size 0.7,1
set output "xap2.tex"
set boxwidth 0.75 absolute
set style fill solid 1.00 border -1
set style histogram rowstacked
set style data histograms
set xtics 1000 nomirror
set ytics 100 nomirror
set mxtics 2
set mytics 2
set ytics 20
set yrange [0:250]
set ylabel "Total messages received"
set xlabel "Device Type"


plot 'xap2.dat' using 2 t "Sense Msg", '' using 3 t "Command Msg", '' using 4 t "Sensor Ping", '' using 5 t "Actuator Ping", '' using 6:xtic(1) t "Controller Ping"

