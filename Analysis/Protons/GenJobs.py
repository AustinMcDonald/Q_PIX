import numpy as np
import os
import glob



def ScriptGen(N_Events, Reset, LT, In_File, In_File_Name, Truth_Out_Path, Sim_Out_Path):

    NAME = str(Reset)+'_'+str(LT)+'_'+In_File_Name

    T_NAME = Truth_Out_Path+"Truth"+"_"+NAME+'.txt'
    S_NAME = Sim_Out_Path+"Sim"+"_"+NAME+'.txt'

    PROCESS = "/n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX/PROCESS/PROCESS "

    Command = PROCESS+" "+str(N_Events)+' '+str(Reset)+' '+str(LT)+' '+In_File+' '+T_NAME+' '+S_NAME
    with open('Scripts/'+NAME+'.sh','w') as File:
        File.write("#!/bin/bash"+"\n")
        File.write("#SBATCH -n 1                # Number of cores "+"\n")
        File.write("#SBATCH -N 1                # Ensure that all cores are on one machine"+"\n")
        File.write("#SBATCH -t 0-08:00          # Runtime in D-HH:MM, minimum of 10 minutes"+"\n")
        File.write("#SBATCH -p guenette         # Partition to submit to "+"\n")
        File.write("#SBATCH --mem=2000           # Memory pool for all cores (see also --mem-per-cpu)"+"\n")
        File.write("\n")
        File.write("export QpixDir=/n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX "+"\n")
        File.write("\n")
        File.write(Command)
        File.write("\n")



N_Events = 10000
Reset = [6250, 3125, 625]
LT = [1000000, 10000, 3000, 1000]

In_Files = glob.glob('/n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/Production/Ar39/Outputs/'+'*.txt')
Truth_Out_Path = '/n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/Analysis/Ar39/Outputs/'
Sim_Out_Path   = Truth_Out_Path

In_File = In_Files[0]
In_File_Name = In_File.split('/')[-1].split('.txt')[0]

for In_File in In_Files:
    In_File_Name = In_File.split('/')[-1].split('.txt')[0]

    for R in Reset:
        for lt in LT:
            ScriptGen(N_Events, R, lt, In_File, In_File_Name, Truth_Out_Path, Sim_Out_Path)