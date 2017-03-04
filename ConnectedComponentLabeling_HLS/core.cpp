#include <stdio.h>
#include <iostream>

#define IMG_HEIGHT 8
#define IMG_WIDTH 8
#define THRESHOLD 70
#define MAX 999
#define MAX_STAR_DATA_SIZE 40
#define MAX_SET_SIZE 40
#define MAX_CENTROID_DATA 40

unsigned lbImage[IMG_HEIGHT * IMG_WIDTH];

unsigned set[MAX_SET_SIZE];

bool status[MAX_STAR_DATA_SIZE];
unsigned totalIntensity[MAX_STAR_DATA_SIZE];
unsigned x[MAX_STAR_DATA_SIZE];
unsigned y[MAX_STAR_DATA_SIZE];

void preProcess(unsigned Image[IMG_HEIGHT*IMG_WIDTH]) {
	unsigned i = 0,j = 0;
	for (i = 0; i < IMG_HEIGHT; ++i) {
		for (j = 0; j < IMG_WIDTH; ++j) {
			if (Image[i*IMG_HEIGHT + j] < THRESHOLD)
				lbImage[i*IMG_HEIGHT + j] = 0;
			else
				lbImage[i*IMG_HEIGHT + j] = 1;
		}
	}
}

unsigned find(unsigned id) {
	int temp = id;
	while (temp != set[temp]) {
#pragma HLS PIPELINE
		temp = set[temp];
	}
	return temp;
}

unsigned firstPass(unsigned Image[IMG_HEIGHT*IMG_WIDTH]) {
	unsigned i = 0, j = 0;
	unsigned label = 0;
	unsigned prevAbove = 0;
	unsigned prevLeft = 0;
	unsigned setCount = 1;
	unsigned min = 0;
	unsigned max = MAX;
	for (int i = 0; i < IMG_HEIGHT; ++i) {
		for (int j = 0; j < IMG_WIDTH; ++j) {
#pragma HLS PIPELINE
			if (lbImage[i*IMG_HEIGHT + j] != 0) {
				prevAbove = (i != 0 && lbImage[(i - 1)*IMG_HEIGHT + j] != 0) ? lbImage[(i - 1)*IMG_HEIGHT + j] : MAX;
				prevLeft = (j != 0 && lbImage[i*IMG_HEIGHT + j - 1] != 0) ? lbImage[i*IMG_HEIGHT + j - 1] : MAX;

				if (prevAbove == MAX && prevLeft == MAX) {
					lbImage[i*IMG_HEIGHT + j] = ++label;
					set[setCount] = label;

					//
					status[setCount] = true;
					totalIntensity[setCount] = Image[i*IMG_HEIGHT + j];
					x[setCount] = i * Image[i*IMG_HEIGHT + j];
					y[setCount] = j * Image[i*IMG_HEIGHT + j];

					++setCount;
				}
				else {
					//Joint Set
					min = prevAbove < prevLeft ? prevAbove : prevLeft;
					max = prevAbove > prevLeft ? prevAbove : prevLeft;
					if (max != MAX) {
						set[max] = find(min);
					}
					else {
						set[min] = find(min);
					}
					lbImage[i*IMG_HEIGHT + j] = min;

					//Update data
					totalIntensity[min] += Image[i*IMG_HEIGHT + j];
					x[min] += i * Image[i*IMG_HEIGHT + j];
					y[min] += j * Image[i*IMG_HEIGHT + j];
				}
			}
		}
	}
	return setCount;
}

unsigned calCentroid(unsigned setCount, unsigned X[MAX_CENTROID_DATA], unsigned Y[MAX_CENTROID_DATA]) {
	unsigned i = 0;
	unsigned root = 0;
	unsigned centroidDataCount = 0;

	for (i = 1; i < setCount; ++i) {
#pragma HLS PIPELINE
		if (set[i] != i) {
			root = find(i);
			totalIntensity[root] += totalIntensity[i];
			x[root] += x[i];
			y[root] += y[i];
			status[i] = false;
		}
	}

	//cal
	for (i = 1; i < setCount; ++i) {
#pragma HLS PIPELINE
		if (status[i] == true) {
			X[centroidDataCount] = (float)x[i] / totalIntensity[i];
			Y[centroidDataCount] = (float)y[i] / totalIntensity[i];

			++centroidDataCount;
		}
	}
	return centroidDataCount;
}

void secondPass() {
	unsigned i = 0, j = 0;
	unsigned root = 0;
	for (i = 0; i < IMG_HEIGHT; ++i) {
		for (j = 0; j < IMG_WIDTH; ++j) {
#pragma HLS PIPELINE
			if (lbImage[i*IMG_HEIGHT + j] != 0) {
				root = find(lbImage[i*IMG_HEIGHT + j]);
				lbImage[i*IMG_HEIGHT + j] = find(lbImage[i*IMG_HEIGHT + j]);
			}
		}
	}
}

unsigned CCLabel(unsigned Image[IMG_HEIGHT*IMG_WIDTH], unsigned X[MAX_CENTROID_DATA], unsigned Y[MAX_CENTROID_DATA]) {
#pragma HLS INTERFACE s_axilite port=return bundle=CRTLS
#pragma HLS INTERFACE bram port=Image bundle=CRTLS
#pragma HLS INTERFACE bram port=X bundle=CRTLS
#pragma HLS INTERFACE bram port=Y bundle=CRTLS

	preProcess(Image);
	unsigned setCount = firstPass(Image);
	unsigned centroidDataCount = calCentroid(setCount, X, Y);

	return centroidDataCount;
}


