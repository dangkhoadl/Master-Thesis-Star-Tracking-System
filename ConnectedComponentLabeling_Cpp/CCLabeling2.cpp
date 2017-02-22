#ifdef _MSC_VER
#define _CRT_SECURE_NO_WARNINGS
#endif

#include <cstdio>
#include <vector>
#include <iostream>
using namespace std;
#define IMG_HEIGHT 4
#define IMG_WIDTH 4
#define THRESHOLD 70 

vector<vector<int>> Image(IMG_HEIGHT, vector<int>(IMG_WIDTH, 0));
vector<vector<int>> boolImage(IMG_HEIGHT, vector<int>(IMG_WIDTH, 0));
vector<int> set(1, 0);


struct starStruct {
	bool status;
	int totalIntensity;
	int x;
	int y;
};
vector<starStruct> starData(1, { false, 0,0,0 });

struct centroid {
	float x;
	float y;
};
vector<centroid> centroidData;


void test() {
	for (int i = 0; i < IMG_HEIGHT; ++i) {
		for (int j = 0; j < IMG_WIDTH; ++j) {
			printf("%2d ", boolImage[i][j]);
		}
		printf("\n");
	}
}
void readImage(FILE *&fileIn) {
	for (int i = 0; i < IMG_HEIGHT; ++i) {
		for (int j = 0; j < IMG_WIDTH; ++j) {
			fscanf(fileIn, "%d", &Image[i][j]);
		}
	}
	fclose(fileIn);
}

void preProcess() {
	for (int i = 0; i < IMG_HEIGHT; ++i) {
		for (int j = 0; j < IMG_WIDTH; ++j) {
			if (Image[i][j] < THRESHOLD)
				boolImage[i][j] = 0;
			else
				boolImage[i][j] = 1;
		}
	}
}

void firstPass() {
	int label = 0;
	for (int i = 0; i < IMG_HEIGHT; ++i) {
		for (int j = 0; j < IMG_WIDTH; ++j) {
			if (boolImage[i][j] == 0)
				continue;

			int prevAbove = (i != 0 && boolImage[i - 1][j] != 0) ? boolImage[i - 1][j] : 999;
			int prevLeft = (j != 0 && boolImage[i][j - 1] != 0) ? boolImage[i][j - 1] : 999;

			if (prevAbove == 999 && prevLeft == 999) {
				boolImage[i][j] = ++label;
				set.push_back(label);

				//
				starStruct temp{ true, Image[i][j], i * Image[i][j], j * Image[i][j] };
				starData.push_back(temp);
			}
			else {
				//Joint Set
				int min = prevAbove < prevLeft ? prevAbove : prevLeft;
				int max = prevAbove > prevLeft ? prevAbove : prevLeft;
				if (max != 999)
					set[max] = min;
				else
					set[min] = min;
				boolImage[i][j] = min;

				//Update data
				starData[min].totalIntensity += Image[i][j];
				starData[min].x += i * Image[i][j];
				starData[min].y += j * Image[i][j];
			}
		}
	}
}

void calCentroid() {
	for (int i = 1; i < starData.size(); ++i) {
		if (set[i] != i) {
			starData[i].totalIntensity += starData[set[i]].totalIntensity;
			starData[i].x += starData[set[i]].x;
			starData[i].y += starData[set[i]].y;

			starData[set[i]].status = false;
		}
	}

	//cal
	for (int i = 1; i < starData.size(); ++i) {
		if (starData[i].status) {
			centroid temp;
			temp.x = (float)starData[i].x / starData[i].totalIntensity;
			temp.y = (float)starData[i].y / starData[i].totalIntensity;

			centroidData.push_back(temp);
		}
	}
}

void secondPass() {
	for (int i = 0; i < IMG_HEIGHT; ++i) {
		for (int j = 0; j < IMG_WIDTH; ++j) {
			if (boolImage[i][j] == 0)
				continue;
			boolImage[i][j] = set[boolImage[i][j]];
		}
	}
}

void printResult() {
	for (int i = 0; i < centroidData.size(); ++i) {
		printf("Star[%d]: x = %f, y = %f\n", i + 1, centroidData[i].x, centroidData[i].y);
	}
}

int main(int agrc, char *argv[]) {
	if (agrc == 2) {
		const char *inputFileName(argv[1]);
		FILE *fileIn;
		fileIn = fopen(inputFileName, "r");

		if (!fileIn) {
			printf("File does not exist !!!\n");
			return 0;
		}

		//process
		readImage(fileIn);
		preProcess();
		firstPass();
		test();
		calCentroid();
		secondPass();
		printf("\n\n\n");
		test();
		printf("\n\n\n");
		printResult();
	}
	else {
		const char* inputProgram(argv[0]);
		printf("Rerun the program with the syntax: %s [IMG]\n", inputProgram);
	}

	return 0;
}
