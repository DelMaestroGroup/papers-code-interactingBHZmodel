rm -f Edge_minus_Bulk_occupation*
#for m=3.0
for U in 0.1 0.3 0.5 0.7 1.0 1.3 1.6 2.0 2.5 3.0 3.5 4.0 5.0 6.0 6.5 7.0 7.5 8.0 8.5 8.75 9.0 9.5 10.0 11.0 12.0
do
	Edge1=$(head -n 4 ni_vs_i_orb0_U${U}_m3.0_4x4.txt | awk '{sum += $2} END {print sum}')
	Edge2=$(tail -n 4 ni_vs_i_orb0_U${U}_m3.0_4x4.txt | awk '{sum += $2} END {print sum}')

	Edge_val1=$(printf '%.10f' "${Edge1}")
	Edge_val2=$(printf '%.10f' "${Edge2}")

	Edge=$(awk "BEGIN {print (${Edge_val1}+${Edge_val2})/8.0}")
	Edge=$(printf '%.10f' "${Edge}")

	Bulk1=$(awk 'NR >= 4 && NR <= 11 { sum += $2 } END { print sum }' ni_vs_i_orb0_U${U}_m3.0_4x4.txt)
	Bulk_val=$(printf '%.10f' "${Bulk1}")

        Bulk=$(awk "BEGIN {print ${Bulk_val}/8.0}")
	Bulk=$(printf '%.10f' "${Bulk}")

	EmB=$(echo "$Edge - $Bulk"| bc -l)
	EmB=$(printf '%.10g' "${EmB}")


        echo "${U}	${EmB}" >> Edge_minus_Bulk_occupation_for_orb0_vs_U_m3.0.txt

done


#for m=1.75
for U in 0.1 0.3 0.5 0.7 1.0 1.3 1.6 2.0 2.5 3.0 3.5 4.0 4.5 5.0 5.25 5.5 5.75 6.0 6.25 6.5 7.0 7.5 8.0 8.5 9.0 9.5 10.0 11.0 12.0
do
        Edge1=$(head -n 4 ni_vs_i_orb0_U${U}_m1.75_4x4.txt | awk '{sum += $2} END {print sum}')
        Edge2=$(tail -n 4 ni_vs_i_orb0_U${U}_m1.75_4x4.txt | awk '{sum += $2} END {print sum}')

        Edge_val1=$(printf '%.10f' "${Edge1}")
        Edge_val2=$(printf '%.10f' "${Edge2}")

        Edge=$(awk "BEGIN {print (${Edge_val1}+${Edge_val2})/8.0}")
        Edge=$(printf '%.10f' "${Edge}")

        Bulk1=$(awk 'NR >= 4 && NR <= 11 { sum += $2 } END { print sum }' ni_vs_i_orb0_U${U}_m1.75_4x4.txt)
        Bulk_val=$(printf '%.10f' "${Bulk1}")

        Bulk=$(awk "BEGIN {print ${Bulk_val}/8.0}")
        Bulk=$(printf '%.10f' "${Bulk}")

        EmB=$(echo "$Edge - $Bulk"| bc -l)
        EmB=$(printf '%.10g' "${EmB}")


        echo "${U}      ${EmB}" >> Edge_minus_Bulk_occupation_for_orb0_vs_U_m1.75.txt

done
