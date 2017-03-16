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

unsigned Image[MAXTHPIXEL];
unsigned mark[MAXTHPIXEL];
unsigned lbImage[MAXTHPIXEL];

unsigned set[MAX_SET_SIZE];

bool status[MAX_STAR_DATA_SIZE];
unsigned totalIntensity[MAX_STAR_DATA_SIZE];
unsigned x[MAX_STAR_DATA_SIZE];
unsigned y[MAX_STAR_DATA_SIZE];

/*********************************** TEMP ********************************************************/
void readImage(FILE *&fileIn, unsigned streamImage[MAX_IMG_HEIGHT * MAX_IMG_WIDTH], unsigned imgHeight, unsigned imgWidth) {
	for (unsigned i = 0; i < imgHeight; ++i) for (unsigned j = 0; j < imgWidth; ++j) {
		fscanf(fileIn, "%d", &streamImage[i*imgHeight + j]);
	}
}

void printResult(FILE *fileOut, unsigned centroidDataCount, unsigned X[MAX_CENTROID_DATA], unsigned Y[MAX_CENTROID_DATA]) {
	for (unsigned i = 0; i < centroidDataCount; ++i) {
		fprintf(fileOut, "Star[%d]: x = %d, y = %d\n", i + 1, X[i], Y[i]);
	}
}
/**************************************** TEMP ***************************************************************/
unsigned find(unsigned id) {
	int temp;
	temp = id;
	while (temp != set[temp]) {
#pragma HLS PIPELINE
		temp = set[temp];
	}
	return temp;
}

int binarySearch(unsigned data, unsigned pixNum) {
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
unsigned firstPass(unsigned imgHeight, unsigned imgWidth, unsigned pixNum) {
	unsigned k = 0, i = 0, j = 0;
	unsigned label = 0;
	unsigned prevAbove = 0;
	unsigned prevLeft = 0;
	unsigned setCount = 1;
	unsigned min = 0;
	unsigned max = MAX;
	unsigned pos = 0;
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
			//Joint Set
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
			X[centroidDataCount] = round((float)x[i] / totalIntensity[i]);
			Y[centroidDataCount] = round((float)y[i] / totalIntensity[i]);

			++centroidDataCount;
		}
	}
	return centroidDataCount;
}

unsigned CCLabel(unsigned streamImage[MAX_IMG_HEIGHT * MAX_IMG_WIDTH], unsigned imgHeight, unsigned imgWidth, unsigned X[MAX_CENTROID_DATA], unsigned Y[MAX_CENTROID_DATA]) {
#pragma HLS INTERFACE s_axilite port=return bundle=CRTLS
#pragma HLS INTERFACE axis port=Image
#pragma HLS INTERFACE s_axilite port=imgHeight bundle=CRTLS
#pragma HLS INTERFACE s_axilite port=imgWidth bundle=CRTLS
#pragma HLS INTERFACE bram port=X bundle=CRTLS
#pragma HLS INTERFACE bram port=Y bundle=CRTLS

//#pragma HLS RESOURCE variable=Image core=RAM_1P_BRAM
	unsigned i = 0;
	unsigned j = 0;
	unsigned pixNum = 0;
	unsigned setCount = 0;
	unsigned centroidDataCount = 0;

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
unsigned streamImage[MAX_IMG_HEIGHT * MAX_IMG_WIDTH];
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
		unsigned X[MAX_CENTROID_DATA];
		unsigned Y[MAX_CENTROID_DATA];


		//Read
		readImage(fileIn, streamImage, imgHeight, imgWidth);
		fclose(fileIn);

		//Output
		const char *outputFileName(argv[2]);
		FILE *fileOut;
		fileOut = fopen(outputFileName, "w");

		//Process
		unsigned centroidDataCount = CCLabel(streamImage, imgHeight, imgWidth, X, Y);

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
