#include <stdio.h>
#include <iostream>
#include <string>
#include <vector>
using namespace std;
#define IMG_HEIGHT 512
#define IMG_WIDTH 512
#define THRESHOLD 70
#define MAX 999

// Image File path
#define INPUT_IMAGE_CORE "D:\\Dropbox\\DangKhoa\\CEE_Cache\\StarTrackingProject\\ConnectedComponentLabeling_Cpp\\RAW_IMG.txt"

void CCLabel(int Image[IMG_HEIGHT][IMG_WIDTH], int lbImage[IMG_HEIGHT][IMG_WIDTH]);

void readImage(FILE *&fileIn, int Image[IMG_HEIGHT][IMG_WIDTH]) {
	for (int i = 0; i < IMG_HEIGHT; ++i)
		for (int j = 0; j < IMG_WIDTH; ++j) {
			fscanf(fileIn, "%d", &Image[i][j]);
		}
	fclose(fileIn);
}

int main() {
	// Read input image
	FILE *fileIn;
	const char *inputFileName(INPUT_IMAGE_CORE);
	fileIn = fopen(inputFileName, "r");

	int Image[IMG_HEIGHT][IMG_WIDTH];
	readImage(fileIn, Image);

	int lbImage[IMG_HEIGHT][IMG_WIDTH];
	CCLabel(Image, lbImage);
	printf("%d", lbImage[52][284]);

	return 0;
}
