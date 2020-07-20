# -*- coding: utf-8 -*-

from astropy.io import fits
from astropy.stats import sigma_clip
import numpy as np
import math
import os
from PIL import Image
from datetime import datetime
import time
import traceback
import scipy.ndimage


def zscale_image(input_img, contrast=0.3):

    """This emulates ds9's zscale feature. Returns the suggested minimum and
    maximum values to display."""
    
    #samples = input_img.flatten()
    samples = input_img[input_img>0]
    samples = samples[~np.isnan(samples)]
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
        
        imgStampz = zscale_image(imgData, contrast=0.4)
        #imgStampz = getFullThumbnail_(imgData)
        #imgStampz = scipy.ndimage.zoom(imgStampz, 0.3, order=0)
        preViewPath = "%s/%s.jpg"%(dpath, imgName.split('.')[0])
        Image.fromarray(imgStampz).save(preViewPath, quality=50)
        os.system("cp %s /data/wata_data/realTimeOtDistribution/WATA_011.jpg"%(preViewPath))
        endtime = datetime.now()
        runTime = (endtime - starttime).seconds
        print("********** image zscale total use %d seconds"%(runTime))
    except Exception as e:
        tstr = traceback.format_exc()
        print("getJpeg error....")
        print(tstr)
         

if __name__ == "__main__":
    
    imgName = 'G011_objt_191107T21020902.fit'
    spath = r'G:\SuperNova20190113\test\test18'
    dpath = r'G:\SuperNova20190113\test\test18'
    getJpeg(imgName, spath, dpath)