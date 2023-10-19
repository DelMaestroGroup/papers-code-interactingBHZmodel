#Merging observable files from Sutherland, NG and LGY data
for obs in Local_charge Local_spin Bulk-Edge_spin Sq_bb_vs_U Sq_ee_vs_U Sq_eb_vs_U Sq_vs_U
do
	rm -f ${obs}_observes_*

	for m_val in 1.75 3.0
	do
		cat Suth_Data/${obs}_observes_m${m_val}.txt NG_Data/${obs}_observes_m${m_val}.txt >>${obs}_observes_m${m_val}.txt
		sort -k1 -n ${obs}_observes_m${m_val}.txt >>${obs}_observes_m${m_val}_copy.txt
		mv ${obs}_observes_m${m_val}_copy.txt ${obs}_observes_m${m_val}.txt
	done

	for m_val in 4.25 3.75 1.0 0.0
	do
		cat LGY_Data/${obs}_observes_m${m_val}.txt NG_Data/${obs}_observes_m${m_val}.txt >>${obs}_observes_m${m_val}.txt
		sort -k1 -n ${obs}_observes_m${m_val}.txt >>${obs}_observes_m${m_val}_copy.txt
                mv ${obs}_observes_m${m_val}_copy.txt ${obs}_observes_m${m_val}.txt
	done

	for m_val in 3.25 2.75 2.25
	do
		cat LGY_Data/${obs}_observes_m${m_val}.txt NG_Data/${obs}_observes_m${m_val}.txt Suth_Data/${obs}_observes_m${m_val}.txt >>${obs}_observes_m${m_val}.txt
		sort -k1 -n ${obs}_observes_m${m_val}.txt >>${obs}_observes_m${m_val}_copy.txt
                mv ${obs}_observes_m${m_val}_copy.txt ${obs}_observes_m${m_val}.txt
	done
done

#Copying observable files from NG data
for m_val in 0.5 1.5 2.0 2.5 3.5 4.0 4.5
do
        cp NG_Data/*observes_m${m_val}.txt .
done

#Copying observable files from LGY data
#cp LGY_Data/*observes_m3.75.txt .
