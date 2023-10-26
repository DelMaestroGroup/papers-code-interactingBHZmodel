Threads=48
dThreads=16
JHbyU=0.25
state=2500

mkdir -p Budich_Runs_PD
cd Budich_Runs_PD

for Size in 4x4
do
	mkdir -p ${Size}_System
	cd ${Size}_System

	for HubbU in 0.5 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8.0 8.5 9.0 9.5 10.0 10.5 11.0 12.0
	do
		mkdir -p U_${HubbU}
		cd U_${HubbU}
		#----------------------------------------------------------------#
		for m_val in 3.0
		do
			mkdir -p m_${m_val}
			cd m_${m_val}

			JH=$(awk "BEGIN {print ${HubbU}*${JHbyU}}")
			M2J_VAL=$(awk "BEGIN {print ${JH}*(-2.0)}")
			MJ_VAL=$(awk "BEGIN {print ${JH}*(-1.0)}")
			UPMJBY2_VAL=$(awk "BEGIN {print ${HubbU}-(2.5)*${JH}}")

			input_in="input_BHZ_Budich_${Size}_s${state}.ain"
			input="input_BHZ_Budich_${Size}.ain"
			rm -f ${input_in}
			rm -f dmrg
			rm -f observe

			cp ../../../../All_Inputs/${input_in} ${input}
			cp ../../../../All_Scripts/{dmrg,observe} .

			sed -i "s/M_VAL/${m_val}/g" ${input}
			sed -i "s/U_val/${HubbU}/g" ${input}
			sed -i "s/Up_m_Jby2_val/${UPMJBY2_VAL}/g" ${input}
			sed -i "s/m_2J_val/${M2J_VAL}/g" ${input}
			sed -i "s/m_J_val/${MJ_VAL}/g" ${input}
			sed -i "s/npthreads_val/${dThreads}/g" ${input}
			#--------------------------------------------------------#
			rm -f *.dat
			#--------------------------------------------------------#
			sub="BHZ_DMRG_Runs.slurm"
			rm -f ${sub}
			jobname="U_${HubbU}_m_${m_val}"

			echo "#!/bin/bash -x"				>>${sub}
			echo "#SBATCH --account acf-utk0170"		>>${sub}
			echo "#SBATCH -J ${jobname}"			>>${sub}
			echo "#SBATCH --ntasks=1"			>>${sub}
			echo "#SBATCH --cpus-per-task=${Threads}"	>>${sub}
			echo "#SBATCH --partition=condo-agdelma-temp"	>>${sub}
			echo "#SBATCH --qos=condo"			>>${sub}
			echo "#SBATCH --time=20-00:00:00"		>>${sub}
			echo "#SBATCH --mail-use=rsoni1@vols.utk.edu"	>>${sub}
			echo "#SBATCH --error=${jobname}.e%J"		>>${sub}
			echo "#SBATCH --output=${jobname}.o%J"		>>${sub}
			echo 'cd $SLURM_SUBMIT_DIR'			>>${sub}

			echo " "					>>${sub}
			echo " "					>>${sub}
			echo "date"					>>${sub}
			echo " "					>>${sub}

			echo "time srun -n 1 -c ${Threads} ./dmrg -f ${input} -p 10"			>>${sub}
			echo "time srun -n 1 -c ${Threads} ./observe -f ${input} ss,nn >>ss_nn.dat"	>>${sub}
			echo "time ./observe -f ${input} '<gs|n?0|gs>' >> nl_0.dat"	>>${sub}
			echo "time ./observe -f ${input} '<gs|n?1|gs>' >> nl_1.dat"	>>${sub}
			echo "time ./observe -f ${input} '<gs|n?2|gs>' >> nl_2.dat"	>>${sub}
			echo "time ./observe -f ${input} '<gs|n?3|gs>' >> nl_3.dat"	>>${sub}

			echo " "					>>${sub}
			echo "date"					>>${sub}

			sbatch ${sub}
			#--------------------------------------------------------#
			echo "$m_val    $HubbU submitted"

			cd ../
		done
		#----------------------------------------------------------------#

		cd ../
	done
	cd ../
done
cd ../
