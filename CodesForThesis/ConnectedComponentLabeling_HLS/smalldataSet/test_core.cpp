#include <stdio.h>
#include <iostream>
#include <string>

using namespace std;
#define IMG_HEIGHT 8
#define IMG_WIDTH 8
#define MAX_CENTROID_DATA 30


// Image File path
#define INPUT_IMAGE_CORE "D:\\Dropbox\\DangKhoa\\CEE_Cache\\StarTrackingProject\\ConnectedComponentLabeling_HLS\\smallDataSet.txt"

unsigned CCLabel(unsigned Image[IMG_HEIGHT*IMG_WIDTH], unsigned X[MAX_CENTROID_DATA], unsigned Y[MAX_CENTROID_DATA]);

void test(unsigned lbImage[IMG_HEIGHT*IMG_WIDTH]) {
	for (unsigned i = 0; i < IMG_HEIGHT; ++i) {
		for (unsigned j = 0; j < IMG_WIDTH; ++j) {
			printf("%d ", lbImage[i*IMG_HEIGHT + j]);
		}
		printf("\n");
	}
	printf("\n\n");
}

void printfResult(unsigned X[MAX_CENTROID_DATA], unsigned Y[MAX_CENTROID_DATA], unsigned centroidDataCount) {
	for(int i = 0; i < centroidDataCount; ++i) {
		printf("Star[%d]: x = %d, y = %d\n", i + 1,  X[i], Y[i]);
	}
}

void readImage(FILE *&fileIn, unsigned Image[IMG_HEIGHT*IMG_WIDTH]) {
	for (unsigned i = 0; i < IMG_HEIGHT; ++i)
		for (unsigned j = 0; j < IMG_WIDTH; ++j) {
			fscanf(fileIn, "%d", &Image[i*IMG_HEIGHT + j]);
		}
	fclose(fileIn);
}

int main() {
	// Read input image
	FILE *fileIn;
	const char *inputFileName(INPUT_IMAGE_CORE);
	fileIn = fopen(inputFileName, "r");

	unsigned Image[IMG_HEIGHT*IMG_WIDTH];
	readImage(fileIn, Image);

	unsigned X[MAX_CENTROID_DATA];
	unsigned Y[MAX_CENTROID_DATA];
	unsigned centroidDataCount = CCLabel(Image, X, Y);
	printfResult(X, Y, centroidDataCount);

	return 0;
}
