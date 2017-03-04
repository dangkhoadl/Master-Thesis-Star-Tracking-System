#include <stdio.h>
#include <iostream>
#include <string>

using namespace std;
#define IMG_HEIGHT 8
#define IMG_WIDTH 8
#define THRESHOLD 70
#define MAX 999
#define MAX_STAR_DATA_SIZE 30
#define MAX_SET_SIZE 30
#define MAX_CENTROID_DATA 30

struct centroid {
	unsigned root;
	float x;
	float y;
};

// Image File path
#define INPUT_IMAGE_CORE "D:\\Dropbox\\DangKhoa\\CEE_Cache\\StarTrackingProject\\ConnectedComponentLabeling_HLS\\smallDataSet.txt"

unsigned CCLabel(unsigned Image[IMG_HEIGHT][IMG_WIDTH], centroid centroidData[MAX_CENTROID_DATA]);

void test(unsigned lbImage[IMG_HEIGHT][IMG_WIDTH]) {
	for (unsigned i = 0; i < IMG_HEIGHT; ++i) {
		for (unsigned j = 0; j < IMG_WIDTH; ++j) {
			printf("%d ", lbImage[i][j]);
		}
		printf("\n");
	}
	printf("\n\n");
}

void printfResult(centroid centroidData[MAX_CENTROID_DATA], unsigned centroidDataCount) {
	for(int i = 0; i < centroidDataCount; ++i) {
		printf("Star[%d]: root = %d, x = %f, y = %f\n", i + 1, centroidData[i].root, centroidData[i].x, centroidData[i].y);
	}
}

void readImage(FILE *&fileIn, unsigned Image[IMG_HEIGHT][IMG_WIDTH]) {
	for (unsigned i = 0; i < IMG_HEIGHT; ++i)
		for (unsigned j = 0; j < IMG_WIDTH; ++j) {
			fscanf(fileIn, "%d", &Image[i][j]);
		}
	fclose(fileIn);
}

int main() {
	// Read input image
	FILE *fileIn;
	const char *inputFileName(INPUT_IMAGE_CORE);
	fileIn = fopen(inputFileName, "r");

	unsigned Image[IMG_HEIGHT][IMG_WIDTH];
	readImage(fileIn, Image);
	test(Image);

	centroid centroidData[MAX_CENTROID_DATA];
	unsigned centroidDataCount = CCLabel(Image, centroidData);
	printfResult(centroidData, centroidDataCount);

	return 0;
}
