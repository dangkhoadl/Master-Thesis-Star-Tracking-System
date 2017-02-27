#include <stdio.h>
#include <iostream>


using namespace std;
#define IMG_HEIGHT 512
#define IMG_WIDTH 512
#define THRESHOLD 70
#define MAX 999

void preProcess(int Image[512][512], int lbImage[512][512]) {
#pragma HLS PIPELINE
	for (int i = 0; i < 512; ++i) {
		for (int j = 0; j < 512; ++j) {
			if (Image[i][j] < 70)
				lbImage[i][j] = 0;
			else
				lbImage[i][j] = 1;
		}
	}
}

void CCLabel(int Image[512][512], int lbImage[512][512]) {
	preProcess(Image, lbImage);
}


