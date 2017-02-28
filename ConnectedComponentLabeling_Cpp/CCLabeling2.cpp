#ifdef _MSC_VER
#define _CRT_SECURE_NO_WARNINGS
#endif

#include <cstdio>
#include <vector>
#include <iostream>
using namespace std;
#define IMG_HEIGHT 8
#define IMG_WIDTH 8
#define THRESHOLD 70 
#define MAX 999

int find(int i, const vector<int> &set) {
	int temp = i;
	while (temp != set[temp]) {
		temp = set[temp];
	}
	return temp;
}

struct starStruct {
	bool status;
	int totalIntensity;
	int x;
	int y;
};

struct centroid {
	int root;
	float x;
	float y;
};

void test(vector<vector<int>> &lbImage) {
	for (int i = 0; i < IMG_HEIGHT; ++i) {
		for (int j = 0; j < IMG_WIDTH; ++j) {
			printf("%2d ", lbImage[i][j]);
		}
		printf("\n");
	}
	printf("\n\n");
}

vector<vector<int>> readImage(FILE *&fileIn) {
	vector<vector<int>> Image(IMG_HEIGHT, vector<int>(IMG_WIDTH, 0));
	for (int i = 0; i < IMG_HEIGHT; ++i)
		for (int j = 0; j < IMG_WIDTH; ++j) {
			fscanf(fileIn, "%d", &Image[i][j]);
		}
	fclose(fileIn);
	return Image;
}

vector<vector<int>> preProcess(const vector<vector<int>> &Image) {
	vector<vector<int>> lbImage(IMG_HEIGHT, vector<int>(IMG_WIDTH, 0));
	for (int i = 0; i < IMG_HEIGHT; ++i)
		for (int j = 0; j < IMG_WIDTH; ++j) {
			if (Image[i][j] < THRESHOLD)
				lbImage[i][j] = 0;
			else
				lbImage[i][j] = 1;
		}
	return lbImage;
}

vector<int> firstPass(const vector<vector<int>> &Image, vector<vector<int>> &lbImage, vector<starStruct> &starData) {
	vector<int> set(1, 0);
	starData.resize(1, { false, 0,0,0 });
	int label = 0;
	for (int i = 0; i < IMG_HEIGHT; ++i)
		for (int j = 0; j < IMG_WIDTH; ++j) {
			if (lbImage[i][j] == 0)
				continue;

			int prevAbove = (i != 0 && lbImage[i - 1][j] != 0) ? lbImage[i - 1][j] : MAX;
			int prevLeft = (j != 0 && lbImage[i][j - 1] != 0) ? lbImage[i][j - 1] : MAX;

			if (prevAbove == MAX && prevLeft == MAX) {
				lbImage[i][j] = ++label;
				set.push_back(label);

				//
				starStruct temp{ true, Image[i][j], i * Image[i][j], j * Image[i][j] };
				starData.push_back(temp);
			}
			else {
				//Joint Set
				int min = prevAbove < prevLeft ? prevAbove : prevLeft;
				int max = prevAbove > prevLeft ? prevAbove : prevLeft;
				if (max != MAX)
					set[max] = find(min, set);
				else
					set[min] = find(min, set);
				lbImage[i][j] = min;

				//Update data
				starData[min].totalIntensity += Image[i][j];
				starData[min].x += i * Image[i][j];
				starData[min].y += j * Image[i][j];
			}
		}
	return set;
}

vector<centroid> calCentroid(const vector<int> &set, vector<starStruct> &starData) {
	vector<centroid> centroidData;
	for (int i = 1; i < starData.size(); ++i) if (set[i] != i) {
		int root = find(i, set);
		starData[root].totalIntensity += starData[i].totalIntensity;
		starData[root].x += starData[i].x;
		starData[root].y += starData[i].y;

		starData[i].status = false;
	}

	//cal
	for (int i = 1; i < starData.size(); ++i) if (starData[i].status) {
		centroid temp;
		temp.root = i;
		temp.x = (float)starData[i].x / starData[i].totalIntensity;
		temp.y = (float)starData[i].y / starData[i].totalIntensity;

		centroidData.push_back(temp);
	}

	return centroidData;
}

void secondPass(vector<vector<int>> &lbImage, const vector<int> &set) {
	for (int i = 0; i < IMG_HEIGHT; ++i) {
		for (int j = 0; j < IMG_WIDTH; ++j) {
			if (lbImage[i][j] == 0)
				continue;
			lbImage[i][j] = find(lbImage[i][j], set);
		}
	}
}

void printResult(const vector<centroid> &centroidData) {
	for (int i = 0; i < centroidData.size(); ++i) {
		printf("Star[%d]: root = %d, x = %f, y = %f\n", i + 1, centroidData[i].root, centroidData[i].x, centroidData[i].y);
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
		vector<vector<int>> Image = readImage(fileIn);
		vector<vector<int>> lbImage = preProcess(Image);
		test(lbImage);
		vector<starStruct> starData; vector<int> set = firstPass(Image, lbImage, starData);
		test(lbImage);
		
		vector<centroid> centroidData = calCentroid(set, starData);
		secondPass(lbImage, set);
		test(lbImage);
		printResult(centroidData);
	}
	else {
		const char* inputProgram(argv[0]);
		printf("Rerun the program with the syntax: %s [IMG]\n", inputProgram);
	}

	return 0;
}
