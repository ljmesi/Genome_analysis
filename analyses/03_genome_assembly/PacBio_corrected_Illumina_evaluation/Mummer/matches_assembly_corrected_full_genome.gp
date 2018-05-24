set terminal png tiny size 800,800
set output "matches_assembly_corrected_full_genome.png"
set ytics ( \
 "" 0 \
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
set yrange [1:*]
set style line 1  lt 1 lw 3 pt 6 ps 1
set style line 2  lt 3 lw 3 pt 6 ps 1
set style line 3  lt 2 lw 3 pt 6 ps 1
plot \
 "matches_assembly_corrected_full_genome.fplot" title "FWD" w lp ls 1, \
 "matches_assembly_corrected_full_genome.rplot" title "REV" w lp ls 2
