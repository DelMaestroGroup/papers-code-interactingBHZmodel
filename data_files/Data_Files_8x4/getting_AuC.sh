m=1.75
U=1.0

val=$(awk 'NR <= 12 {sum += ($2 < 0) ? -1 * $2 : $2} END {print sum}' ni_vs_i_orb0_U${U}_m${m}_8x4.txt)
val=$(printf '%.10f' "${val}")
val1=$(awk "BEGIN {print ${val}/4.0}")
val1=$(printf '%.10f' "${val1}")

echo "$val1"
