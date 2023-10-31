#**********#
ne=0.0
mkdir -p Eigenvalues_Runs
cd Eigenvalues_Runs

Lx=24
Ly=24

mkdir -p System_${Lx}x${Ly}
cd System_${Lx}x${Ly}

for A_val in 1.0
do
        mkdir -p A_${A_val}
        cd A_${A_val}

        for B_val in 0.5
        do
                mkdir -p B_${B_val}
                cd B_${B_val}

                Mby2B_min=-0.5
                Mby2B_max=2.5

                Mby2B=$(echo "${Mby2B_min}" | bc -l)

                while (( $(echo "${Mby2B} <= ${Mby2B_max}" | bc -l) ))
                do

                        Mby2B=$(printf '%.10g' "${Mby2B}")

                        mkdir -p Mby2B_${Mby2B}
                        cd Mby2B_${Mby2B}

                        M_prime=$(echo "2.0*${B_val}*${Mby2B}" | bc -l)
                        M_val=$(echo "${M_prime}" | bc -l)

                        input="input_BHZ.inp"

                        rm -f main
                        rm -f ${input}

                        cp ../bin/main .
                        cp ../inputs/input_BHZ.inp .

                        sed -i "s/XCELL_IN/${Lx}/g" ${input}
                        sed -i "s/YCELL_IN/${Ly}/g" ${input}
                        sed -i "s/A_VAL_IN/${A_val}/g" ${input}
                        sed -i "s/B_VAL_IN/${B_val}/g" ${input}
                        sed -i "s/M_VAL_IN/${M_val}/g" ${input}

                        time ./main BHZ ${input}
                        cp Eigenvalues.txt Eigenvalues_PxP.txt

                        echo "-----------------------------"
                        echo "Mby2B = ${Mby2B} is completed"
                        echo "-----------------------------"

                        cd ../
                Mby2B=$(echo "${Mby2B}+0.05" | bc -l)
                done
                cd ../
        done
        cd ../
done
cd ../
cd ../