#**********#
ne=0.5
mkdir -p Smooth_Boundary_Runs
cd Smooth_Boundary_Runs

Lx=100
Ly=4

mkdir -p System_${Lx}x${Ly}
cd System_${Lx}x${Ly}

A_val=1.0
B_val=0.5
M_val=0.25

Vo_min=0.1
Vo_max=1.0

Wx_min=2
Wx_max=20

Vo_val=$(echo "${Vo_min}" | bc -l)

while (( $(echo "${Vo_val} <= ${Vo_max}" | bc -l) ))
do
    Vo_val=$(printf '%.10g' "${Vo_val}")

    mkdir -p Vo_${Vo_val}
    cd Vo_${Vo_val}

    Wx_val=$(echo "${Wx_min}" | bc -l)
    while (( $(echo "${Wx_val} <= ${Wx_max}" | bc -l) ))
    do
        mkdir -p Wx_${Wx_val}
        cd Wx_${Wx_val}

        input="input_BHZ_run.inp"
        rm -f main*
        rm -f ${input}

        cp ../../../../inputs/${input} .
        cp ../../../../bin/main_LDOE .

        #********************************************#
        sed -i "s/XCELL_IN/${Lx}/g" ${input}
        sed -i "s/YCELL_IN/${Ly}/g" ${input}
        sed -i "s/FILL_IN/${ne}/g" ${input}
        sed -i "s/A_VAL_IN/${A_val}/g" ${input}
        sed -i "s/B_VAL_IN/${B_val}/g" ${input}
        sed -i "s/M_VAL_IN/${M_val}/g" ${input}
        sed -i "s/Wx_IN/${Wx_val}/g" ${input}
        sed -i "s/Vo_VAL_IN/${Vo_val}/g" ${input}
        #********************************************#

        time ./main_LDOE BHZ ${input}

        echo "-----------------------------"
        echo "Vo = ${Vo_val}, W = ${Wx_val} run completed"
        echo "-----------------------------"


        cd ../
        Wx_val=$(echo "${Wx_val}+2" | bc -l)
    done


    cd ../
    Vo_val=$(echo "${Vo_val}+0.1" | bc -l)
done