#ifdef _MSC_VER
#define _CRT_SECURE_NO_WARNINGS
#endif

#include <cstdio>
#include <vector>
#include <iostream>
using namespace std;
#define IMG_HEIGHT 512
#define IMG_WIDTH 512
#define THRESHOLD 70 

vector<vector<int>> Image(IMG_HEIGHT, vector<int>(IMG_WIDTH, 0));
vector<vector<int>> boolImage(IMG_HEIGHT, vector<int>(IMG_WIDTH, 0));
vector<int> set(1, 0);

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
			}
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
		//test();
		secondPass();
		printf("\n\n\n");
		//test();
		cout << set.size();
	}
	else {
		const char* inputProgram(argv[0]);
		printf("Rerun the program with the syntax: %s [IMG]\n", inputProgram);
	}

	return 0;
}
