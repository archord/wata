# -*- coding: utf-8 -*-

import warnings
from astropy.modeling import models, fitting
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


def zscale_image(input_img, contrast=0.4):

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

def backgroundRemove(tdata, grid=(40, 40)):
    
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
            
    bgAvgs = []
    for treg in subRegions:
        timg = tdata[treg[0]:treg[1], treg[2]:treg[3]]
        samples = timg.flatten()
        tIdx = np.random.choice(samples.shape[0], int(samples.shape[0]*0.05), replace=False)
        samples = samples[tIdx]
        samples[samples<0]=0
        filtered_data = sigma_clip(samples, sigma=2.5, iters=2, copy=False)
        imgbg = filtered_data.data[~filtered_data.mask]
        imgbgAvg = np.average(imgbg)
        
        avgX=(treg[2]+treg[3])/2
        avgY=(treg[0]+treg[1])/2
        bgAvgs.append((avgX, avgY, imgbgAvg))
    
    bgAvgs = np.array(bgAvgs)
    zoomSize = 2
    imgX = bgAvgs[:,0]/zoomSize
    imgY = bgAvgs[:,1]/zoomSize
    imgBg = bgAvgs[:,2]
    
    p_init = models.Polynomial2D(2)
    fit_p = fitting.LevMarLSQFitter()
    
    with warnings.catch_warnings():
        warnings.simplefilter('ignore')
        bgfitter = fit_p(p_init, imgX, imgY, imgBg)
    
        print("imgW=%f,imgH=%f"%(imgW, imgH))
        imgW=int(imgW/zoomSize)
        imgH=int(imgH/zoomSize)
        print("imgW=%f,imgH=%f"%(imgW, imgH))
        imgWs = np.arange(imgW)
        xIdx = np.repeat(imgWs, imgH)
        xIdx = np.reshape(xIdx, (imgW, imgH)).transpose().flatten()
        imgHs = np.arange(imgH)
        yIdx = np.repeat(imgHs,imgW)
        
        bgTran = bgfitter(xIdx, yIdx)
        bgTran = np.reshape(bgTran, (imgH, imgW))
        bgTran = scipy.ndimage.zoom(bgTran, zoomSize)
        
        #dstImgPath = r'G:\SuperNova20190113\test\test18'
        #savePath = "%s/abc.fit"%(dstImgPath)
        #fits.writeto(savePath, bgTran, overwrite=True)
        
        tdata= tdata-bgTran
    return tdata  
 
def getJpeg(imgName, spath, dpath):
    
    try:
        if not os.path.exists(dpath):
            os.system("mkdir -p %s"%(dpath))
        
        starttime = datetime.now()
        tpath0 = "%s/%s"%(spath, imgName)
        imgData = fits.getdata(tpath0)
        imgData=imgData.astype(np.float)
        #imgData = backgroundRemove(imgData, (100, 100))
        imgData = backgroundRemove(imgData, (10, 10))
        imgStampz = zscale_image(imgData)
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
    
    imgName = 'G011_objt_190610T12322600.fit'
    spath = r'G:\SuperNova20190113\test\test18'
    dpath = r'G:\SuperNova20190113\test\test18'
    getJpeg(imgName, spath, dpath)