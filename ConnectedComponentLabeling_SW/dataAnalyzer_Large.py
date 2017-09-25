#!/usr/bin/python3
import sys
import math
sys.stdout = open('A_output.txt', 'w')

#------------------------------------- PARAMETERS ---------------------------------------------------------------#
IMG_HEIGHT = 512
IMG_WIDTH = 512
THRESHOLD = 70
MAX = 9999

Image = []
checkIMG = []
searchDir = [ [0,0],[-1,-1],[-1,0],[-1,1],[0,-1],[0,1],[1,-1],[1,0],[1,1] ]

class starDataS:
    def __init__(self,totalIntensity, area, sumX, sumY, centreX, centreY):
        self.totalIntensity = totalIntensity
        self.area = area
        self.sumX = sumX
        self.sumY = sumY
        self.centreX = centreX
        self.centreY = centreY
starData = []

#------------------------------------- FUNCTIONS ---------------------------------------------------------------#
def clearVal():
    Image[:] = []
    checkIMG[:] = []
    starData[:] = []
    for i  in range (IMG_HEIGHT+2):
        checkIMG.append([0 for j in range(IMG_WIDTH+2)])


def readIMG(fileName):
    fil = open(fileName, 'r')
    Image.append([0 for j in range(IMG_WIDTH+2)])
    for line in fil:
        Image.append([0] + [int(float(x)) for x in line.split()] + [0])
    Image.append([0 for j in range(IMG_WIDTH+2)])
    fil.close()


def dfs(x,y,star):
    for i in range(len(searchDir)):
        if Image[x + searchDir[i][0]][y + searchDir[i][1]] >= THRESHOLD and checkIMG[x + searchDir[i][0]][y + searchDir[i][1]] != 1:
            checkIMG[x + searchDir[i][0]][y + searchDir[i][1]] = 1

            star.totalIntensity += Image[x + searchDir[i][0]][y + searchDir[i][1]]
            star.area += 1
            star.sumX += (x + searchDir[i][0]) * Image[x + searchDir[i][0]][y + searchDir[i][1]]
            star.sumY += (y + searchDir[i][1]) * Image[x + searchDir[i][0]][y + searchDir[i][1]]

            dfs(x + searchDir[i][0], y + searchDir[i][1], star)


def centroid():
    for i in range(0, IMG_HEIGHT+2, 1):
        for j in range (0, IMG_WIDTH+2, 1):
            if Image[i][j] >= THRESHOLD and checkIMG[i][j] != 1:
                star = starDataS(0,0,0,0,0,0)
                dfs(i, j, star)
                star.centreX = int(round(star.sumX / star.totalIntensity))
                star.centreY = int(round(star.sumY / star.totalIntensity))
                starData.append(star)
            checkIMG[i][j] = 1;


NumStarDistribution = {}
StarAreaDistribution = {}
def analyze():
    # number of stars in 1 IMG distribution
    if len(starData) in NumStarDistribution:
        NumStarDistribution[len(starData)] += 1
    else:
        NumStarDistribution[len(starData)] = 1
    # star area
    for starD in starData:
        if starD.area in StarAreaDistribution:
            StarAreaDistribution[starD.area] += 1
        else:
            StarAreaDistribution[starD.area] = 1


def solve():
    for i in range(1,71,1):
        for j in range(179):
            clearVal()
            readIMG("IMG_" + str(i) + '_' + str(j) + ".bin")
            centroid()
            analyze()
    ####### print #####################
    print(NumStarDistribution)
    print(StarAreaDistribution)

    print("Number of Stars in 1 Image distribution")
    for it in NumStarDistribution:
        print(str(it) + '\t' + str(NumStarDistribution[it]))

    print("Star Area Distribution")
    for it in StarAreaDistribution:
        print(str(it) + '\t' + str(StarAreaDistribution[it]))


##############################################################################################
solve()
