Lx=4
Ly=4

Size=$(awk "BEGIN {print ${Lx}*${Ly}}")
Sizep=$(awk "BEGIN {print ${Size}+1}")

mkdir -p Budich_Runs_PD
cd Budich_Runs_PD

mkdir -p ${Lx}x${Ly}_System
cd ${Lx}x${Ly}_System

for m_val in 3.0
do
	rm -f ../../PD_Budich_Data_4x4/*observes_m${m_val}.txt

	for HubbU in 0.5 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8.0 8.5 9.0 9.5 10.0 10.5 11.0 12.0
	do
		mkdir -p U_${HubbU}
		cd U_${HubbU}

		mkdir -p m_${m_val}
		cd m_${m_val}


		cp ../../../../All_Scripts/Two_point_corr_reading_exe .

		cp ss_nn.dat ss_nn_bkup.dat

		grep -A ${Size} "site <gs|n?0|gs> time" nl_0.dat | awk '{print $1"\t"$2}' >n1_up.txt
		sed -i '1d' n1_up.txt
		sed -i 's:(::g' n1_up.txt
		sed -i 's:,:\t:g' n1_up.txt
		sed -i 's:)::g' n1_up.txt

		grep -A ${Size} "site <gs|n?1|gs> time" nl_1.dat | awk '{print $1"\t"$2}' >n0_up.txt
		sed -i '1d' n0_up.txt
		sed -i 's:(::g' n0_up.txt
		sed -i 's:,:\t:g' n0_up.txt
		sed -i 's:)::g' n0_up.txt

		grep -A ${Size} "site <gs|n?2|gs> time" nl_2.dat | awk '{print $1"\t"$2}' >n1_dn.txt
		sed -i '1d' n1_dn.txt
		sed -i 's:(::g' n1_dn.txt
		sed -i 's:,:\t:g' n1_dn.txt
		sed -i 's:)::g' n1_dn.txt

		grep -A ${Size} "site <gs|n?3|gs> time" nl_3.dat | awk '{print $1"\t"$2}' >n0_dn.txt
		sed -i '1d' n0_dn.txt
		sed -i 's:(::g' n0_dn.txt
		sed -i 's:,:\t:g' n0_dn.txt
		sed -i 's:)::g' n0_dn.txt

		grep -A ${Sizep} "SpinTotalTotal" ss_nn.dat | tail -${Size} > Si_Sj_tot.txt
		grep -A ${Sizep} "SpinTotal orb1-1" ss_nn.dat | tail -${Size} > Si_Sj_orb-1.txt
		grep -A ${Sizep} "SpinTotal orb0-0" ss_nn.dat | tail -${Size} > Si_Sj_orb-0.txt

		grep -A ${Sizep} "<gs|n?0;n?0|gs>" ss_nn.dat | tail -${Size} >ni1up_nj1up.txt
		grep -A ${Sizep} "<gs|n?0;n?1|gs>" ss_nn.dat | tail -${Size} >ni1up_nj0up.txt
		grep -A ${Sizep} "<gs|n?0;n?2|gs>" ss_nn.dat | tail -${Size} >ni1up_nj1dn.txt
		grep -A ${Sizep} "<gs|n?0;n?3|gs>" ss_nn.dat | tail -${Size} >ni1up_nj0dn.txt

		grep -A ${Sizep} "<gs|n?1;n?1|gs>" ss_nn.dat | tail -${Size} >ni0up_nj0up.txt
		grep -A ${Sizep} "<gs|n?1;n?2|gs>" ss_nn.dat | tail -${Size} >ni0up_nj1dn.txt
		grep -A ${Sizep} "<gs|n?1;n?3|gs>" ss_nn.dat | tail -${Size} >ni0up_nj0dn.txt

		grep -A ${Sizep} "<gs|n?2;n?2|gs>" ss_nn.dat | tail -${Size} >ni1dn_nj1dn.txt
		grep -A ${Sizep} "<gs|n?2;n?3|gs>" ss_nn.dat | tail -${Size} >ni1dn_nj0dn.txt

		grep -A ${Sizep} "<gs|n?3;n?3|gs>" ss_nn.dat | tail -${Size} >ni0dn_nj0dn.txt

		./Two_point_corr_reading_exe ${Size}

		Local_S2_orb0=$(grep "Avg_local_S^2_for_orb-0" S2_file.txt | awk '{print $2}')
		Local_S2_orb1=$(grep "Avg_local_S^2_for_orb-1" S2_file.txt | awk '{print $2}')
		Total_S2_val=$(grep "Avg_local_S^2_of_the_system" S2_file.txt | awk '{print $2}')
		Avg_S2_tot_edge=$(grep "Avg_local_S^2_tot_on_edge" S2_file.txt | awk '{print $2}')
		Avg_S2_tot_bulk=$(grep "Avg_local_S^2_tot_in_bulk" S2_file.txt | awk '{print $2}')


		Sk_00=$(grep "Sk\[0\]\[0\]" S2_file.txt | awk '{print $2}')
		Sk_0pi=$(grep "Sk\[0\]\[pi\]" S2_file.txt | awk '{print $2}')
		Sk_pi0=$(grep "Sk\[pi\]\[0\]" S2_file.txt | awk '{print $2}')
		Sk_pipi=$(grep "Sk\[pi\]\[pi\]" S2_file.txt | awk '{print $2}')

		Sk_ee_00=$(grep "Sk_ee\[0\]\[0\]" S2_file.txt | awk '{print $2}')
		Sk_ee_0pi=$(grep "Sk_ee\[0\]\[pi\]" S2_file.txt | awk '{print $2}')
		Sk_ee_pi0=$(grep "Sk_ee\[pi\]\[0\]" S2_file.txt | awk '{print $2}')
		Sk_ee_pipi=$(grep "Sk_ee\[pi\]\[pi\]" S2_file.txt | awk '{print $2}')

		Sk_bb_00=$(grep "Sk_bb\[0\]\[0\]" S2_file.txt | awk '{print $2}')
		Sk_bb_0pi=$(grep "Sk_bb\[0\]\[pi\]" S2_file.txt | awk '{print $2}')
		Sk_bb_pi0=$(grep "Sk_bb\[pi\]\[0\]" S2_file.txt | awk '{print $2}')
		Sk_bb_pipi=$(grep "Sk_bb\[pi\]\[pi\]" S2_file.txt | awk '{print $2}')

		Sk_eb_00=$(grep "Sk_eb\[0\]\[0\]" S2_file.txt | awk '{print $2}')
		Sk_eb_0pi=$(grep "Sk_eb\[0\]\[pi\]" S2_file.txt | awk '{print $2}')
		Sk_eb_pi0=$(grep "Sk_eb\[pi\]\[0\]" S2_file.txt | awk '{print $2}')
		Sk_eb_pipi=$(grep "Sk_eb\[pi\]\[pi\]" S2_file.txt | awk '{print $2}')


		echo "${HubbU}  ${Local_S2_orb0}        ${Local_S2_orb1}        ${Total_S2_val}" >> ../../../../PD_Budich_Data_4x4/Local_spin_observes_m${m_val}.txt
		echo "${HubbU}  ${Sk_00}        ${Sk_0pi}       ${Sk_pi0}       ${Sk_pipi}" >> ../../../../PD_Budich_Data_4x4/Sq_vs_U_observes_m${m_val}.txt
		echo "${HubbU}  ${Avg_S2_tot_edge}      ${Avg_S2_tot_bulk}" >> ../../../../PD_Budich_Data_4x4/Bulk-Edge_spin_observes_m${m_val}.txt
		echo "${HubbU}  ${Sk_ee_00}     ${Sk_ee_0pi}    ${Sk_ee_pi0}    ${Sk_ee_pipi}" >> ../../../../PD_Budich_Data_4x4/Sq_ee_vs_U_observes_m${m_val}.txt
		echo "${HubbU}  ${Sk_bb_00}     ${Sk_bb_0pi}    ${Sk_bb_pi0}    ${Sk_bb_pipi}" >> ../../../../PD_Budich_Data_4x4/Sq_bb_vs_U_observes_m${m_val}.txt
		echo "${HubbU}  ${Sk_eb_00}     ${Sk_eb_0pi}    ${Sk_eb_pi0}    ${Sk_eb_pipi}" >> ../../../../PD_Budich_Data_4x4/Sq_eb_vs_U_observes_m${m_val}.txt

		Avg_occ_orb0=$(grep "Avg_occ_for_orb-0" Occupation_number_file.txt | awk '{print $2}')
		Avg_occ_orb1=$(grep "Avg_occ_for_orb-1" Occupation_number_file.txt | awk '{print $2}')

		echo "${HubbU}  ${Avg_occ_orb0} ${Avg_occ_orb1}" >> ../../../../PD_Budich_Data_4x4/Local_charge_observes_m${m_val}.txt

		Avg_char_fluc0=$(grep "Charge_fluctuations_for_orb-0" Occupation_number_file.txt | awk '{print $2}')
		Avg_char_fluc1=$(grep "Charge_fluctuations_for_orb-1" Occupation_number_file.txt | awk '{print $2}')

		echo "${HubbU}	${Avg_char_fluc0}	${Avg_char_fluc1}" >> ../../../../PD_Budich_Data_4x4/Charge_fluctuations_observes_m${m_val}.txt

		Avg_doub_occ0=$(grep "Double_occupancy_for_orb-0" Occupation_number_file.txt | awk '{print $2}')
		Avg_doub_occ1=$(grep "Double_occupancy_for_orb-1" Occupation_number_file.txt | awk '{print $2}')
		echo "${HubbU}	${Avg_doub_occ0}	${Avg_doub_occ1}" >> ../../../../PD_Budich_Data_4x4/Double_occupancy_observes_m${m_val}.txt


		cp ni_vs_i_orb0.txt ../../../../PD_Budich_Data_4x4/ni_vs_i_orb0_U${HubbU}_m${m_val}_${Lx}x${Ly}.txt
		cp ni_vs_i_orb1.txt ../../../../PD_Budich_Data_4x4/ni_vs_i_orb1_U${HubbU}_m${m_val}_${Lx}x${Ly}.txt
		cp Avg_n_vs_rx_orb0.txt ../../../../PD_Budich_Data_4x4/Avg_n_vs_rx_orb0_U${HubbU}_m${m_val}_${Lx}x${Ly}.txt
		cp Avg_n_vs_rx_orb1.txt ../../../../PD_Budich_Data_4x4/Avg_n_vs_rx_orb1_U${HubbU}_m${m_val}_${Lx}x${Ly}.txt

		cp Nd_corr_vs_d_orb0.txt ../../../../PD_Budich_Data_4x4/Nd_corr_vs_d_orb0_U${HubbU}_m${m_val}_${Lx}x${Ly}.txt
		cp Nd_corr_vs_d_orb1.txt ../../../../PD_Budich_Data_4x4/Nd_corr_vs_d_orb1_U${HubbU}_m${m_val}_${Lx}x${Ly}.txt
		cp Nd_corr_vs_d_tot.txt ../../../../PD_Budich_Data_4x4/Nd_corr_vs_d_tot_U${HubbU}_m${m_val}_${Lx}x${Ly}.txt

		cp Tzd_corr_vs_d_tot.txt ../../../../PD_Budich_Data_4x4/Tzd_corr_vs_d_tot_U${HubbU}_m${m_val}_${Lx}x${Ly}.txt

		cp Sd_corr_vs_d_tot.txt ../../../../PD_Budich_Data_4x4/Sd_corr_vs_d_tot_U${HubbU}_m${m_val}_${Lx}x${Ly}.txt
		cp Sd_corr_vs_d_orb1.txt ../../../../PD_Budich_Data_4x4/Sd_corr_vs_d_orb1_U${HubbU}_m${m_val}_${Lx}x${Ly}.txt
		cp Sd_corr_vs_d_orb0.txt ../../../../PD_Budich_Data_4x4/Sd_corr_vs_d_orb0_U${HubbU}_m${m_val}_${Lx}x${Ly}.txt
		cp Sq_heatmap_file.txt  ../../../../PD_Budich_Data_4x4/Sq_heatmap_file_U${HubbU}_m${m_val}_${Lx}x${Ly}.txt

		cp S0Si_vs_i_orb0.txt ../../../../PD_Budich_Data_4x4/S0Si_vs_i_orb0_U${HubbU}_m${m_val}_${Lx}x${Ly}.txt
		cp S0Si_vs_i_orb1.txt ../../../../PD_Budich_Data_4x4/S0Si_vs_i_orb1_U${HubbU}_m${m_val}_${Lx}x${Ly}.txt
		cp S0Si_vs_i_tot.txt ../../../../PD_Budich_Data_4x4/S0Si_vs_i_tot_U${HubbU}_m${m_val}_${Lx}x${Ly}.txt



		cd ../
		echo "U=$HubbU m=$m_val done"
		cd ../
	done
done
cd ..
cd ../
