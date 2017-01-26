#pragma once

#include <vector>
#include <iostream>
#include <algorithm>
#include "Centroider.h"

struct StarPattern {
	int N;
	int d1;
	int d2;
	int d3;
	int starID;
	float sqError;
};


StarPattern getStarPattern(std::vector<Star> &starList, int FOV);
