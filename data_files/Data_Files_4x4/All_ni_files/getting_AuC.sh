m=3.0
U=7.5

val=$(awk '{ sum += $2 } END { print sum }' ni_vs_i_orb0_U${U}_m${m}_4x4.txt)
val=$(printf '%.10f' "${val}")
val1=$(awk "BEGIN {print ${val}/8.0}")
val1=$(printf '%.10f' "${val1}")

echo "$val1"
