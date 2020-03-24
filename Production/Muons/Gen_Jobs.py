import os
import numpy as np
from time      import time
from Defs       import *


cwd = os.getcwd()

Template  = cwd + "/Template.mac"
OutputDir  = cwd+ "/Outputs/"
MacroPath = cwd+ "/Macros/"
ScriptsPath = cwd+ "/Scripts/"

G4_QPIX = "/n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/G4_QPIX/Build/app/G4Basic "

Total_Events = 1e6
Events_File  = int(100)
N_Jobs       = int(Total_Events/Events_File)

macro_vars = {}

for i in range(N_Jobs):

    macro_vars['output_file']  = OutputDir+str(i).zfill(6)+'.txt'
    macro_vars['particle']     = 'Muon'
    macro_vars['n_events']     = Events_File

    ConfigFile = MacroPath+str(i).zfill(6)+".mac"

    GEN_CONFIGURATION(Template, ConfigFile, **macro_vars)

    with open(ScriptsPath+str(i).zfill(6)+".sh",'w') as script:
        script.write("#!/bin/bash"+"\n")
        script.write("#SBATCH -n 1                # Number of cores "+"\n")
        script.write("#SBATCH -N 1                # Ensure that all cores are on one machine"+"\n")
        script.write("#SBATCH -t 0-05:00          # Runtime in D-HH:MM, minimum of 10 minutes"+"\n")
        script.write("#SBATCH -p guenette         # Partition to submit to "+"\n")
        script.write("#SBATCH --mem=2000           # Memory pool for all cores (see also --mem-per-cpu)"+"\n")
        script.write("\n")
        script.write(". /n/holylfs02/LABS/guenette_lab/software/next/scisoft/setup \n")
        script.write("setup cmake  v3_14_3 \n")
        script.write("setup geant4 v4_10_6_p01 -q e19:prof \n")
        script.write(G4_QPIX+ConfigFile)
