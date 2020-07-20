# -*- coding: utf-8 -*-
import sys
import time
import subprocess
from datetime import datetime
import traceback
import os

def cleanDisk():
    spath1 = r'/data/wata_data/fits_orig'
    spath2 = r'/data/wata_data/fits_preview'
    
    dirs = os.listdir(spath1)
    dirs.sort()
    tdirs2=[]
    for tdir in dirs:
        if tdir>'20191101' and len(tdir)==8:
            tdirs2.append(tdir)
    
    delDirs = []
    for i, tdir in enumerate(tdirs2):
        delDirs.append(tdir)
        tfullPath = '%s/%s'%(spath1, tdir)
        print("delete path %s"%(tfullPath))
        os.system("rm -rf %s"%(tfullPath))
        if i>0:
            break
    
    for tdir in delDirs:
        tfullPath = '%s/%s'%(spath2, tdir)
        print("delete path %s"%(tfullPath))
        os.system("rm -rf %s"%(tfullPath))

def diskUsePercentage():

    paths = ["root", "data"]
    devs = ["sda2","sda4"]
    uses = [0,0]
                
    try:

        tcmd = "df -T"
        process= subprocess.Popen(tcmd, shell=True, stdout=subprocess.PIPE)
        (stdoutstr,stderrstr) = process.communicate()
        stdoutstr = stdoutstr.decode("utf-8")
        for line in stdoutstr.split('\n'):
            for ii, tdev in enumerate(devs):
                if line.find(tdev)>-1:
                    strs = line.split()
                    if len(strs)==7 and strs[5].find("%")>-1:
                        #tuse = strs[5][:-1]
                        tsize = float(strs[2])
                        tused = float(strs[3])
                        uses[ii]=tused/tsize
                        break
        
        for i, tuse in enumerate(uses):
            print("%s usage %.2f%%"%(paths[i], tuse*100))
            
        if uses[1]>0.9:
            cleanDisk()

    except Exception as err:
        print(" update disk use error ")
        print(err)
        tstr = traceback.format_exc()
        print(tstr)
        
if __name__ == '__main__':
    
    diskUsePercentage()