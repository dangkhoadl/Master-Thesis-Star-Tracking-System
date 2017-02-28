#include <stdio.h>
#include <iostream>


using namespace std;
#define IMG_HEIGHT 8
#define IMG_WIDTH 8
#define THRESHOLD 70
#define MAX 999
#define MAX_STAR_DATA_SIZE 30
#define MAX_SET_SIZE 30
#define MAX_CENTROID_DATA 30

struct starStruct {
	bool status;
	unsigned totalIntensity;
	unsigned x;
	unsigned y;
};

struct centroid {
	unsigned root;
	float x;
	float y;
};

unsigned find(unsigned i,unsigned set[MAX_SET_SIZE]) {
	unsigned temp = i;
	while (temp != set[temp]) {
		temp = set[temp];
	}
	return temp;
}

void preProcess(unsigned Image[IMG_HEIGHT][IMG_WIDTH], unsigned lbImage[IMG_WIDTH][IMG_WIDTH]) {
	unsigned i = 0,j = 0;
#pragma HLS PIPELINE
	for (i = 0; i < IMG_HEIGHT; ++i) {
		for (j = 0; j < IMG_WIDTH; ++j) {
			if (Image[i][j] < THRESHOLD)
				lbImage[i][j] = 0;
			else
				lbImage[i][j] = 1;
		}
	}

}

unsigned firstPass(	unsigned Image[IMG_HEIGHT][IMG_WIDTH],
			 	unsigned lbImage[IMG_WIDTH][IMG_WIDTH],
			 	starStruct starData[MAX_STAR_DATA_SIZE],
			 	unsigned set[MAX_SET_SIZE]) {
	unsigned i = 0, j = 0;
	unsigned label = 0;
	unsigned prevAbove = 0;
	unsigned prevLeft = 0;
	unsigned setCount = 1;
	starStruct temp;
	unsigned min = 0;
	unsigned max = MAX;
	for(i = 0; i < IMG_HEIGHT; ++i) {
		for(j = 0; j < IMG_WIDTH; ++j) {
#pragma HLS PIPELINE
			if(lbImage[i][j] == 0) {
				continue;
			}

			prevAbove = (i != 0 && lbImage[i - 1][j] != 0) ? lbImage[i - 1][j] : MAX;
			prevLeft = (j != 0 && lbImage[i][j - 1] != 0) ? lbImage[i][j - 1] : MAX;

			if (prevAbove == MAX && prevLeft == MAX) {
				lbImage[i][j] = ++label;
				set[setCount] = label;


				temp.status = true;
				temp.totalIntensity = Image[i][j];
				temp.x = i * Image[i][j];
				temp.y = j * Image[i][j];
				starData[setCount] = temp;

				++setCount;
			}
			else {
				//Joint Set
				min = prevAbove < prevLeft ? prevAbove : prevLeft;
				max = prevAbove > prevLeft ? prevAbove : prevLeft;
				if (max != MAX) {
					set[max] = find(min, set);
				}
				else {
					set[min] = find(min, set);
				}
				lbImage[i][j] = min;

				//Update data
				starData[min].totalIntensity += Image[i][j];
				starData[min].x += i * Image[i][j];
				starData[min].y += j * Image[i][j];
			}
		}
	}
	return setCount;
}

unsigned calCentroid(unsigned set[MAX_SET_SIZE], starStruct starData[MAX_STAR_DATA_SIZE], centroid centroidData[MAX_CENTROID_DATA], unsigned setCount) {
	unsigned i = 0;
	unsigned root = 0;
	unsigned centroidDataCount = 0;
	centroid temp;
	for(i = 1; i < setCount; ++i) {
#pragma HLS PIPELINE
		if(set[i] != i) {
			root = find(i, set);
			starData[root].totalIntensity += starData[i].totalIntensity;
			starData[root].x += starData[i].x;
			starData[root].y += starData[i].y;
			starData[i].status = false;
		}
	}

	//cal
	for(i = 1; i < setCount; ++i) {
#pragma HLS PIPELINE
		if(starData[i].status == true) {
			temp.root = i;
			temp.x = (float)starData[i].x / starData[i].totalIntensity;
			temp.y = (float)starData[i].y / starData[i].totalIntensity;

			centroidData[centroidDataCount] = temp;
			++centroidDataCount;
		}
	}
	return centroidDataCount;
}

unsigned CCLabel(unsigned Image[IMG_HEIGHT][IMG_WIDTH], unsigned lbImage[IMG_HEIGHT][IMG_WIDTH], starStruct starData[MAX_STAR_DATA_SIZE], unsigned set[MAX_SET_SIZE], centroid centroidData[MAX_CENTROID_DATA]) {
	preProcess(Image, lbImage);
	unsigned setCount = firstPass(Image, lbImage, starData, set);
	unsigned centroidDataCount = calCentroid(set, starData, centroidData, setCount);

	return centroidDataCount;
}


