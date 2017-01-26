#ifndef __INOUT__
#define __INOUT__

#include <iostream>
#include <fstream>
#include <string>
#include "Centroider.h"
using namespace std;

struct StarPattern
{
	int N;
	int d1;
	int d2;
	int d3;
	int starID;
	float sqError;
};
typedef struct StarPattern STARPATTERN;

struct Node
{
	STARPATTERN info;
	struct Node *link;
};
typedef struct Node NODE;

//IMG 
void ReadIMG(ifstream &FileIn, int img_height, int img_width, int **IMG);
void TestIMG(ofstream &FileOut, int img_height, int img_width, int **IMG);

//SPD and Table
void ReadSPD(ifstream &FileIn, NODE *table[], int numberEntries);
void Insert(STARPATTERN *rec, NODE *table[]);
void DisplayTable(ofstream &FileOut, NODE *table[], int tableSize);

//Star Pattern
void DisplayStarPattern(ofstream &FileOut, STARPATTERN *starPattern);

//Star list
void DisplayStarList(ofstream &FileOut, STAR *start, int NumberOfStar);

//Result
void DisplayResult(ofstream &FileOut, NODE *result);

#endif