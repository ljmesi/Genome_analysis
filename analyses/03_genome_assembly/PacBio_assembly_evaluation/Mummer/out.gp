set terminal png tiny size 800,800
set output "out.png"
set ytics ( \
 "tig00000001" 1, \
 "tig00000021" 2773588, \
 "tig00000022" 2813603, \
 "tig00000027" 2858202, \
 "tig00000029" 2875359, \
 "tig00000031" 2901637, \
 "tig00000479" 2913624, \
 "tig00000480" 3132615, \
 "" 3142355 \
)
set size 1,1
set grid
unset key
set border 0
set tics scale 0
set xlabel "REF"
set ylabel "QRY"
set format "%.0f"
set mouse format "%.0f"
set mouse mouseformat "[%.0f, %.0f]"
set mouse clipboardformat "[%.0f, %.0f]"
set xrange [1:*]
set yrange [1:3142355]
set style line 1  lt 1 lw 3 pt 6 ps 1
set style line 2  lt 3 lw 3 pt 6 ps 1
set style line 3  lt 2 lw 3 pt 6 ps 1
plot \
 "out.fplot" title "FWD" w lp ls 1, \
 "out.rplot" title "REV" w lp ls 2
