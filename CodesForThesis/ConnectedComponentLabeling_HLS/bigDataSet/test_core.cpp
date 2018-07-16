#include <stdio.h>
#include <iostream>
#include <string>
#include <hls_stream.h>
#include <ap_axi_sdata.h>

typedef ap_axis<32,2,5,6> intSdCh;

#define MAX_IMG_HEIGHT 1024
#define MAX_IMG_WIDTH 1024
#define MAX_CENTROID_DATA 40

//Setting imgheight, imgwidth
#define imgH 512
#define imgW 512

// Image File path
#define INPUT_IMAGE_CORE "D:\\Dropbox\\DangKhoa\\CEE_Cache\\StarTrackingProject\\ConnectedComponentLabeling_HLS\\bigDataSet\\RAW_IMG.txt"

int CCLabel(hls::stream<intSdCh> &streamImage, int imgHeight, int imgWidth, int X[MAX_CENTROID_DATA], int Y[MAX_CENTROID_DATA]);


void printfResult(int X[MAX_CENTROID_DATA], int Y[MAX_CENTROID_DATA], int centroidDataCount) {
	for(int i = 0; i < centroidDataCount; ++i) {
		printf("Star[%d]: x = %d, y = %d\n", i + 1,  X[i], Y[i]);
	}
}

void readImage(FILE *&fileIn, hls::stream<intSdCh> &streamImage) {
	for (int i = 0; i < imgH; ++i)
		for (int j = 0; j < imgW; ++j) {
			int data = 0;
			fscanf(fileIn, "%d", &data);
			intSdCh valIn;
			valIn.data = data;
			valIn.keep = 1; valIn.strb = 1; valIn.user = 1; valIn.id = 0; valIn.dest = 0;
			streamImage << valIn;
		}
	fclose(fileIn);
}

int main() {
	// Read input image
	FILE *fileIn;
	const char *inputFileName(INPUT_IMAGE_CORE);
	fileIn = fopen(inputFileName, "r");

	hls::stream<intSdCh> streamImage;
	readImage(fileIn, streamImage);

	int X[MAX_CENTROID_DATA];
	int Y[MAX_CENTROID_DATA];
	int centroidDataCount = CCLabel(streamImage, imgH, imgW, X, Y);

	printfResult(X, Y, centroidDataCount);
	return 0;
}
