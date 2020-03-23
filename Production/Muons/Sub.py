import os
import time
import glob
def Diff(li1, li2):
    return (list(set(li1) - set(li2)))

OutputDir     = os.getcwd() + '/Outputs/'
ScriptDir     = os.getcwd() + '/Scripts/'
Jobs = glob.glob(ScriptDir+"*.sh")
Jobs.sort()
JobsComp = [i.split('.sh', 1)[0].split("/")[-1] for i in Jobs]

Outs = glob.glob(OutputDir+"*.txt")
Outs.sort()
OutsComp = [i.split('.txt', 1)[0].split("/")[-1] for i in Outs]

MissingJobs = Diff(JobsComp,OutsComp)

print("Found "+str(len(MissingJobs))+" missing jobs")


for Job in MissingJobs:
    print("Submitting " +Job)
    AH = "sbatch "+ScriptDir+Job+'.sh'
    #print(AH)
    os.system(AH)
    time.sleep(5)
