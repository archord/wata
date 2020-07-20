# -*- coding: utf-8 -*-

from astropy.io import fits
import numpy as np
import math
import os
from PIL import Image
from datetime import datetime
import psycopg2
import time
import traceback
import logging
import scipy.ndimage

#nohup python getOTImgsAll.py > /dev/null 2>&1 &
class QueryData:
    
    connParam={
        "host": "172.28.9.14",
        "port": "5432",
        "dbname": "wata",
        "user": "wata",
        "password": "wata902"
        }
    
    def __init__(self):
        
        self.conn = False
        self.conn2 = False
        
    def connDb(self):
        
        self.conn = psycopg2.connect(**self.connParam)
        self.dataVersion = ()
        
    def closeDb(self):
        self.conn.close()
        
    def getFileList(self):
        
        sql = "select img_name, img_path, ff_id, gen_time FROM fits_file2 where status='1' order by ff_id limit 20;"
        
        try:
            self.connDb()
    
            cur = self.conn.cursor()
            cur.execute(sql)
            rows = cur.fetchall()
            cur.close()
            self.closeDb()
        except Exception as err:
            rows = []
            print(" query fits_file2 error ")
            print(err)
            
        return rows
    
    def updateStatus(self, ffId):
        
        sql = "update fits_file2 set status='2' where ff_id=%d"%(ffId)
        
        try:
            self.connDb()
    
            cur = self.conn.cursor()
            cur.execute(sql)
            self.conn.commit()
            cur.close()
            self.closeDb()
        except Exception as err:
            print(" query fits_file2 error ")
            print(err)
    
    def updateCameraMonitorTime(self, tdata):
        
        camId = '011'
        time = tdata[3]
        tTime = datetime.strftime(time, "%Y-%m-%d %H:%M:%S")
        
        sql = "update camera set monitor_image_time='%s' where cid='%s'"%(tTime, camId)
        
        try:
            self.connDb()
    
            cur = self.conn.cursor()
            cur.execute(sql)
            self.conn.commit()
            cur.close()
            self.closeDb()
        except Exception as err:
            print(" query fits_file2 error ")
            print(err)

def zscale_image(input_img, contrast=0.4):

    """This emulates ds9's zscale feature. Returns the suggested minimum and
    maximum values to display."""
    
    #samples = input_img.flatten()
    samples = input_img[input_img>0]
    samples = samples[~np.isnan(samples)]
    #tIdx = np.random.choice(samples.shape[0], 50000, replace=False)
    #samples = samples[tIdx].copy()
    if samples.shape[0]>100000:
        tIdx = np.random.choice(samples.shape[0], int(samples.shape[0]*0.05), replace=False)
        samples = samples[tIdx].copy()
    samples.sort()
    chop_size = int(0.1*len(samples))
    subset = samples[chop_size:-chop_size]
    
    if len(subset)<10:
        return np.array([])

    i_midpoint = int(len(subset)/2)
    I_mid = subset[i_midpoint]

    fit = np.polyfit(np.arange(len(subset)) - i_midpoint, subset, 1)
    # fit = [ slope, intercept]

    z1 = I_mid + fit[0]/contrast * (1-i_midpoint)/1.0
    z2 = I_mid + fit[0]/contrast * (len(subset)-i_midpoint)/1.0
    zmin = z1
    zmax = z2
    
    if zmin<0:
        zmin=0
    if math.fabs(zmin-zmax)<0.000001:
        zmin = np.min(samples)
        zmax = np.max(samples)
    
    zimg = input_img.copy()
    zimg[zimg>zmax] = zmax
    zimg[zimg<zmin] = zmin
    zimg=(((zimg-zmin)/(zmax-zmin))*255).astype(np.uint8)
    
    return zimg
    
def getFullThumbnail_(tdata, grid=(4, 4)):
    
    imgSize = tdata.shape
    imgW = imgSize[1]
    imgH = imgSize[0]
    XInterval = math.floor(imgW/grid[0])
    YInterval = math.floor(imgH/grid[1])
    
    subRegions = []
    for y in range(grid[1]):
        minY = y*YInterval
        maxY = (y+1)*YInterval
        if y==grid[1]-1:
            maxY = imgH
        if minY<0:
            minY=0
        if maxY>imgH:
            maxY = imgH
        for x in range(grid[0]):
            minX = x*XInterval
            maxX = (x+1)*XInterval
            if x==grid[0]-1:
                maxX = imgW
            if minX<0:
                minX=0
            if maxX>imgW:
                maxX = imgW
            subRegions.append((minY, maxY, minX, maxX))
    
    #print(subRegions)
    stampImgs = []
    for treg in subRegions:
        timg = tdata[treg[0]:treg[1], treg[2]:treg[3]]
        timgz = zscale_image(timg)
        if timgz.shape[0] == 0:
            timgz = timg
            tmin = np.min(timgz)
            tmax = np.max(timgz)
            timgz=(((timgz-tmin)/(tmax-tmin))*255).astype(np.uint8)
        stampImgs.append(timgz)
    
    for y in range(grid[1]):
        for x in range(grid[0]):
            tidx = y*grid[0] + x
            timg = stampImgs[tidx]
            if x ==0:
                rowImg = timg
            else:
                rowImg = np.concatenate((rowImg, timg), axis=1)
        if y ==0:
            conImg = rowImg
        else:
            conImg = np.concatenate((conImg, rowImg), axis=0)

    return conImg 

def getJpeg(imgName, spath, dpath):
    
    try:
        if not os.path.exists(dpath):
            os.system("mkdir -p %s"%(dpath))
        
        starttime = datetime.now()
        tpath0 = "%s/%s"%(spath, imgName)
        imgData = fits.getdata(tpath0)
        
        imgStampfull = zscale_image(imgData)
        #imgStampfull = getFullThumbnail_(imgData)
        imgStampz = scipy.ndimage.zoom(imgStampfull, 0.3, order=0)
        preViewPath = "%s/%s.jpg"%(dpath, imgName.split('.')[0])
        Image.fromarray(imgStampfull).save(preViewPath, quality=50)
        
        realShowPath = "/data/wata_data/realTimeOtDistribution/WATA_011.jpg"
        Image.fromarray(imgStampz).save(realShowPath, quality=50)
        #os.system("cp %s /data/wata_data/realTimeOtDistribution/WATA_011.jpg"%(preViewPath))
        endtime = datetime.now()
        runTime = (endtime - starttime).seconds
        print("********** image zscale total use %d seconds"%(runTime))
    except Exception as e:
        tstr = traceback.format_exc()
        print("getJpeg error....")
        print(tstr)
                
def scheduling():
    
    logFileName = "/home/wata/program/wataBatch/batchGetJpegImageLogging.log"
    logfile0 = open(logFileName, 'a')
    
    spath1 = r'/data/wata_data/fits_orig'
    dpath1 = r'/data/wata_data/fits_preview'

    tquery = QueryData()
    while True:
        
        try:
            tfiles = tquery.getFileList()
            #print("query %d images"%(len(tfiles)))
            for tf in tfiles:
                imgName = tf[0]
                imgPath = tf[1]
                logfile0.write("%s"%(imgName))
                logfile0.write("\n")
                ffId = tf[2]
                tquery.updateStatus(ffId)
                
                dpath = imgPath.replace('fits_orig','fits_preview')
                getJpeg(imgName, imgPath, dpath)
            
            tnum = len(tfiles)
            if tnum>0:
                lastFile = tfiles[tnum-1]
                tquery.updateCameraMonitorTime(lastFile)
            time.sleep(10)
        except Exception as e:
            tstr = traceback.format_exc()
            logfile0.write("batchGetJpegImage error....")
            logfile0.write("\n")
            logfile0.write(tstr)
            logfile0.write("\n")
            time.sleep(30)
        
        logfile0.flush()
            
    logfile0.close()

if __name__ == "__main__":
    
    scheduling()