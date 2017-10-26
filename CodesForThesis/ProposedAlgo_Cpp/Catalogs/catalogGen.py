#!/usr/bin/python3
import sys
sys.stdout = open('output.out', 'w')


# Parameters
IMG_HEIGHT = 512
IMG_WIDTH = 512
PIXEL_SIZE = 7e-3
FOV = 20

SAOCATALOGIN = "SKY2000_Magnitude5_doublestar.txt"
CATALOGOUT = "proposedAlgo_catalog.txt"
TREELEVEL = 3


import pandas as pd
def readCatalog():
    f = open(SAOCATALOGIN, 'r')
    data = {
        'SKYMAP_No' : [],
        'star_RA' : [],
        'star_DEC' : [],
        'star_MAG' : []
    }
    for line in f.readlines():
        col = line.split()
        data['SKYMAP_No'].append(col[0])
        data['star_RA'].append(col[1])
        data['star_DEC'].append(col[2])
        data['star_MAG'].append(col[3])
    f.close()
    return pd.DataFrame(data)


import sympy as sp
import numpy as np
import math
def rad(deg):
    return float(deg) * math.pi / 180.0 


def Convert_Axis_2_AttitudeMatrix(RA,DEC):
    axis = [sp.cos(rad(DEC))*sp.cos(rad(RA)), sp.cos(rad(DEC))*sp.sin(rad(RA)),  sp.sin(rad(DEC))]

    # Calculate rotation matrix
    # The z axis of camera
    c2 = np.array(axis);

    # The x axis of the camera
    c0x = c2[1]/math.sqrt((c2[0]**2)+(c2[1]**2))
    c0y = -c2[0]/math.sqrt((c2[0]**2)+(c2[1]**2))
    c0z = 0
    c0 = np.array([c0x, c0y, c0z])

    # The y axis of the cam = z cross x
    c1 = np.cross(c2, c0)

    return [c0,c1,c2]


# Si is coordiante of star in Earth reference frame, 
# the 3 column are X, Y,and Z
def buildSi():
    data = []
    for (index,entry) in SAOCatalog.iterrows():
        DEC = entry['star_DEC']
        RA = entry['star_RA']
        # Convert RA, and DEC into ECI unit vector
        data.append([sp.cos(rad(DEC))*sp.cos(rad(RA)), sp.cos(rad(DEC))*sp.sin(rad(RA)),  sp.sin(rad(DEC))])
    return np.array(data)


def findStarImage(SAOCatalog, Si, C, FOV, img_height, img_width, pixel_size):
    # focal length
    f = img_height * pixel_size / 2 / np.tan(rad(FOV)/2)

    # Rotation matrix from Earth to camera reference frame
    c0 = C[0]
    c1 = C[1]
    c2 = C[2]

    # Find all the neighbor stars to reference stars within the half FOV
    data = {
        'SKYMAP_No' : [],
        'star_RA' : [],
        'star_DEC' : [],
        'star_MAG' : [],
        'X' : [],
        'Y' : []
    }
    for (i,entry) in SAOCatalog.iterrows():
        # SKYMAP_No = entry['SKYMAP_No']
        # RA = entry['star_RA']
        # DEC = entry['star_DEC']
        # star_MAG = entry['star_MAG']
        Sc_FOV = []
        if np.dot(Si[i], np.transpose(c2)) > sp.cos(rad(FOV)):
            # Project star into camera frame
            Sc_FOV = [np.dot(Si[i], np.transpose(c0)), np.dot(Si[i], np.transpose(c1)), np.dot(Si[i], np.transpose(c2))]

            # Project stars into image frame
            x = Sc_FOV[0] / Sc_FOV[2] / pixel_size  + img_height/2
            y = f * Sc_FOV[1]/ Sc_FOV[2] / pixel_size + img_width/2

            # Add star into star list
            data['SKYMAP_No'].append(entry['SKYMAP_No'])
            data['star_RA'].append(entry['star_RA'])
            data['star_DEC'].append(entry['star_DEC'])
            data['star_MAG'].append(entry['star_MAG'])
            data['X'].append(x)
            data['Y'].append(y)

    return pd.DataFrame(data)


def buildProposedAlgorithmCatalog(refStar,star_matrix, treeLevel, img_height, img_width):
    distances = []
    for (index,entry) in star_matrix.iterrows():
        if int(entry['SKYMAP_No']) == refStar:
            continue

        # Cal distance to StarRef
        d = math.sqrt(((entry['X'] - img_height/2)**2) + ((entry['Y'] - img_width/2)**2))

        # Find all star within half of FOV
        if d > img_height/4:
            continue

        distances.append(int(d))

    distances.sort()

    results = (treeLevel+2) * [0]
    results[0] = len(distances)
    results[treeLevel+1] = refStar
    for i in range(treeLevel):
        if i >= len(distances):
            break
        results[i+1] = distances[i]
    return results


def printCatalog(catalog):
    f = open(CATALOGOUT, 'w')
    for entry in catalog:
        for i in range(len(entry)):
            if i != len(entry) - 1:
                f.write("%s " % entry[i])
            else:
                f.write("%s\n" % entry[i])
    f.close()

# main
import operator
if __name__ == '__main__':
    SAOCatalog = readCatalog()
    Si = buildSi()
    catalog = []
    for (index,entry) in SAOCatalog.iterrows():
        C = Convert_Axis_2_AttitudeMatrix(entry['star_RA'], entry['star_DEC'])
        star_matrix = findStarImage(SAOCatalog, Si, C,FOV,IMG_HEIGHT,IMG_WIDTH,PIXEL_SIZE)


        # Build Catalog here !!!
        catalog.append(buildProposedAlgorithmCatalog(index+1,star_matrix, TREELEVEL, IMG_HEIGHT,IMG_WIDTH))

        # Sort the catalog based on N then d1,d2..., dtreelevel
        catalog.sort(key = operator.itemgetter(slice(0,TREELEVEL+1,1)))
    printCatalog(catalog)
