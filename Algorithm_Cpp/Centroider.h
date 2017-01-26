#pragma once
#include <vector>
#include <iostream>
#include <algorithm>

struct Star {
	int X;
	int Y;
	int area;
	float starDistance2Centre;
	float starDistance2StarRef;
};

struct StarData {
	int sumOfXproduct;
	int sumOfYproduct;
	int sum;
	int area;
};

std::vector<Star> centroider(const std::vector<std::vector<int>> &IMG, int levelThreshold,int areaThreshold, int &numberOfStar);
void search(int pixelHeight, int pixelWidth, int img_height, int img_width, int levelThreshold, StarData *data, const std::vector<std::vector<int>> &IMG, std::vector<std::vector<bool>> &refIMG);
void insert2List(std::vector<Star> &list, int img_height, int img_width, int XCoordinate, int YCoordinate, int starArea);
