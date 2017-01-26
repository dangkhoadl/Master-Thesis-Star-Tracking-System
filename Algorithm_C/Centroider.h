#ifndef __CENTROIDER__
#define __CENTROIDER__

#include <vector>
#include <iostream>
using namespace std;

struct Star
{
	int X;
	int Y;
	int area;
	float starDistance2Centre;
	float starDistance2StarRef;

	struct Star *next;
};
typedef struct Star STAR;

struct StarData
{
	int sumOfXproduct;
	int sumOfYproduct;
	int sum;
	int area;
};
typedef struct StarData STARDATA;



void LevelThreshold(int img_height, int img_width, int **IMG, int level);
STAR *Centroider(int img_height, int img_width, int **IMG, int areaThreshold, int &numberOfStar);
static void Search(int pixelHeight, int pixelWidth, int img_height, int img_width, STARDATA *data, int **IMG, int **refIMG);

//Sorted Linked List
STAR *InSert2SortedList(STAR *start, int img_height, int img_width, int XCoordinate, int YCoordinate, int starArea);
STAR *FreeList(STAR *start);

#endif