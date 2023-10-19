m=1.75
U=5.0

val=$(awk '{ sum += $2 } END { print sum }' ni_vs_i_orb0_U${U}_m${m}_6x4.txt)
val=$(printf '%.10f' "${val}")
val1=$(awk "BEGIN {print ${val}/8.0}")
val1=$(printf '%.10f' "${val1}")

echo "$val1"
