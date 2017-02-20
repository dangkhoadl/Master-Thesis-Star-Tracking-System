#ifdef _MSC_VER
#define _CRT_SECURE_NO_WARNINGS
#endif

/*
	for loop through all the rows except the first one:
	for loop through all the columns:
		if pixel != 0:
			if pixel not belongs to first column:
				if previous rows pixel is not zero:
					Copy that number to current pixel
				elseif previous rows diagonal pixel is not zero:
					Copy that number to current pixel
				elseif left pixel is not zero:
					Copy that number to current pixel
			else
				If previous rows pixel is not zero:
					Copy that number to current pixel
*/


#include <cstdio>
#include <vector>
using namespace std;
#define IMG_HEIGHT 6
#define IMG_WIDTH 7
#define THRESHOLD 70 

vector<vector<int>> Image(IMG_HEIGHT, vector<int>(IMG_WIDTH, 0));
vector<vector<int>> connected(IMG_HEIGHT, vector<int>(IMG_WIDTH, 0));


void test() {
	for (int i = 0; i < IMG_HEIGHT; ++i) {
		for (int j = 0; j < IMG_WIDTH; ++j) {
			printf("%d ", Image[i][j]);
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

void firstPass() {
	int mark = 0;
	int prevPixel = 0;
	for (int i = 0; i < IMG_HEIGHT; ++i) {
		for (int j = 0; j < IMG_WIDTH; ++j) {
			if (Image[i][j] == 1) {
				if (j == 0 || Image[i][j - 1] != mark)
					Image[i][j] = ++mark;
				else 
					Image[i][j] = mark;
			}
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
		firstPass();
		test();

		
	}
	else {
		const char* inputProgram(argv[0]);
		printf("Rerun the program with the syntax: %s [IMG]\n", inputProgram);
	}

	return 0;
}
