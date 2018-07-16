#ifdef _MSC_VER
#define _CRT_SECURE_NO_WARNINGS
#endif

#define DEBUG

#include <cstdio>
#include <vector>
#include <iostream>
using namespace std;

/*******************************************************************************************/
#define MAX_IMG_HEIGHT 1024
#define MAX_IMG_WIDTH 1024
#define MAXTHPIXEL 1024
#define THRESHOLD 70
#define MAX 999
#define MAX_STAR_DATA_SIZE 40
#define MAX_SET_SIZE 40
#define MAX_CENTROID_DATA 40

int Image[MAXTHPIXEL];
int mark[MAXTHPIXEL];
int lbImage[MAXTHPIXEL];

int set[MAX_SET_SIZE];

bool status[MAX_STAR_DATA_SIZE];
int totalIntensity[MAX_STAR_DATA_SIZE];
int x[MAX_STAR_DATA_SIZE];
int y[MAX_STAR_DATA_SIZE];

/*********************************** TEMP ********************************************************/
void readImage(FILE *&fileIn, int streamImage[MAX_IMG_HEIGHT * MAX_IMG_WIDTH], int imgHeight, int imgWidth) {
	for (int i = 0; i < imgHeight; ++i) for (int j = 0; j < imgWidth; ++j) {
		fscanf(fileIn, "%d", &streamImage[i*imgHeight + j]);
	}
}

void printResult(FILE *fileOut, int centroidDataCount, int X[MAX_CENTROID_DATA], int Y[MAX_CENTROID_DATA]) {
	for (int i = 0; i < centroidDataCount; ++i) {
		fprintf(fileOut, "Star[%d]: x = %d, y = %d\n", i + 1, X[i], Y[i]);
	}
}
/**************************************** TEMP ***************************************************************/
int find(int id) {
	int temp;
	temp = id;
	while (temp != set[temp]) {
#pragma HLS PIPELINE
		temp = set[temp];
	}
	return temp;
}

int binarySearch(int data, int pixNum) {
	int left = 0;
	int right = pixNum - 1;
	int mid = 0;
	while (true) {
#pragma HLS PIPELINE
		mid = left + (right - left) / 2;
		if (data == mark[mid]) {
			return mid;
		}

		if (left > right || data < mark[left] || data > mark[right])
			return -1;

		if (data > mark[mid])
			left = mid + 1;
		else
			right = mid - 1;
	}
	return -1;
}

/*******************************************************************************************/
int firstPass(int imgHeight, int imgWidth, int pixNum) {
	int k = 0, i = 0, j = 0;
	int label = 0;
	int prevAbove = 0;
	int prevLeft = 0;
	int setCount = 1;
	int min = 0;
	int max = MAX;
	int pos = 0;
	int posA = 0;
	int posL = 0;
	for (pos = 0; pos < pixNum; ++pos) {
#pragma HLS PIPELINE
		k = mark[pos];
		i = k / imgHeight;
		j = k % imgHeight;
		posA = binarySearch((i - 1)*imgHeight + j, pixNum);
		posL = binarySearch(i*imgHeight + j - 1, pixNum);
		prevAbove = (i != 0 && posA != -1) ? lbImage[posA] : MAX;
		prevLeft = (j != 0 && posL != -1) ? lbImage[posL] : MAX;

		if (prevAbove == MAX && prevLeft == MAX) {
			lbImage[pos] = ++label;
			set[setCount] = label;

			//
			status[setCount] = true;
			totalIntensity[setCount] = Image[pos];
			x[setCount] = i * Image[pos];
			y[setCount] = j * Image[pos];

			++setCount;
		}
		else {
			//Join Set
			min = prevAbove < prevLeft ? prevAbove : prevLeft;
			max = prevAbove > prevLeft ? prevAbove : prevLeft;
			if (max != MAX) {
				set[max] = find(min);
			}
			else {
				set[min] = find(min);
			}
			lbImage[pos] = min;

			//Update data
			totalIntensity[min] += Image[pos];
			x[min] += i * Image[pos];
			y[min] += j * Image[pos];
		}
	}
	return setCount;
}

int calCentroid(int setCount, int X[MAX_CENTROID_DATA], int Y[MAX_CENTROID_DATA]) {
	int i = 0;
	int root = 0;
	int centroidDataCount = 0;

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
			X[centroidDataCount] = round((float)x[i] / totalIntensity[i]);
			Y[centroidDataCount] = round((float)y[i] / totalIntensity[i]);

			++centroidDataCount;
		}
	}
	return centroidDataCount;
}

int CCLabel(int streamImage[MAX_IMG_HEIGHT * MAX_IMG_WIDTH], int imgHeight, int imgWidth, int X[MAX_CENTROID_DATA], int Y[MAX_CENTROID_DATA]) {
#pragma HLS INTERFACE s_axilite port=return bundle=CRTLS
#pragma HLS INTERFACE axis port=Image
#pragma HLS INTERFACE s_axilite port=imgHeight bundle=CRTLS
#pragma HLS INTERFACE s_axilite port=imgWidth bundle=CRTLS
#pragma HLS INTERFACE bram port=X bundle=CRTLS
#pragma HLS INTERFACE bram port=Y bundle=CRTLS

	//#pragma HLS RESOURCE variable=Image core=RAM_1P_BRAM
	int i = 0;
	int j = 0;
	int pixNum = 0;
	int setCount = 0;
	int centroidDataCount = 0;

	for (i = 0; i < imgHeight; ++i) {
#pragma HLS PIPELINE
		for (j = 0; j < imgWidth; ++j) {
#pragma HLS PIPELINE
			if (streamImage[i*imgHeight + j] >= THRESHOLD) {
				mark[pixNum] = i*imgHeight + j;
				Image[pixNum] = streamImage[i*imgHeight + j];
				++pixNum;
			}
		}
	}
	setCount = firstPass(imgHeight, imgWidth, pixNum);
	centroidDataCount = calCentroid(setCount, X, Y);

	return centroidDataCount;
}

/*******************************************************************************************/
int streamImage[MAX_IMG_HEIGHT * MAX_IMG_WIDTH];
//Setting imgheight, imgwidth
#define imgHeight 512
#define imgWidth 512
int main(int agrc, char *argv[]) {
	if (agrc == 3) {
		const char *inputFileName(argv[1]);
		FILE *fileIn;
		fileIn = fopen(inputFileName, "r");

		if (!fileIn) {
			printf("File does not exist !!!\n");
			return 0;
		}
		//Vars
		int X[MAX_CENTROID_DATA];
		int Y[MAX_CENTROID_DATA];


		//Read
		readImage(fileIn, streamImage, imgHeight, imgWidth);
		fclose(fileIn);

		//Output
		const char *outputFileName(argv[2]);
		FILE *fileOut;
		fileOut = fopen(outputFileName, "w");

		//Process
		int centroidDataCount = CCLabel(streamImage, imgHeight, imgWidth, X, Y);

		//Write
		printResult(fileOut, centroidDataCount, X, Y);
		fclose(fileOut);
	}
	else {
		const char* inputProgram(argv[0]);
		printf("Rerun the program with the syntax: %s [IMG]\n", inputProgram);
	}

	return 0;
}
