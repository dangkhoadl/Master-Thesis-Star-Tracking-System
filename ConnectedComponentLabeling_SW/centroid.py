#!/usr/bin/python3
import sys
import math
sys.stdout = open('output.txt', 'w')

#------------------------------------- FUNCTIONS ---------------------------------------------------------------#
IMG_HEIGHT = 512
IMG_WIDTH = 512
THRESHOLD = 70
MAX = 9999

Image = []
checkIMG = []
searchDir = [ [0,0],[-1,-1],[-1,0],[-1,1],[0,-1],[0,1],[1,-1],[1,0],[1,1] ];

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


def readIMG(fileName):
    fil = open(fileName, 'r')
    for i  in range (IMG_HEIGHT):
        checkIMG.append([0 for j in range(IMG_WIDTH)])
    for line in fil:
        Image.append([int(float(x)) for x in line.split()])
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
    for i in range(0, IMG_HEIGHT, 1):
        for j in range (0, IMG_WIDTH, 1):
            if Image[i][j] >= THRESHOLD and checkIMG[i][j] != 1:
                star = starDataS(0,0,0,0,0,0)
                dfs(i, j, star)
                star.centreX = int(round(star.sumX / star.totalIntensity))
                star.centreY = int(round(star.sumY / star.totalIntensity))
                starData.append(star)
            checkIMG[i][j] = 1;


def printResults():
    for i in range(len(starData)):
        print("star[%d]: x = %d, y = %d" % (i+1,starData[i].centreX, starData[i].centreY))


def minMax():
    minA = MAX
    maxA = 0
    totalIntensity = 0
    for starD in starData:
        minA = min(starD.area, minA)
        maxA = max(starD.area, maxA)
        totalIntensity += starD.area
    print("Min area = " + str(minA) + ", Max area = " + str(maxA) + ", Average area = " + str(int(round(totalIntensity / len(starData)))))


def solve():
    clearVal()
    readIMG("RAW_IMG.txt")
    centroid()
    printResults()
    minMax()


##############################################################################################
solve()
