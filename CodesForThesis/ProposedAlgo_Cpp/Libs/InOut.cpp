#include "InOut.h"

void readIMG(std::ifstream &FileIn, std::vector<std::vector<int>> &IMG) {
	double pixel;
	int img_height = IMG.size();
	int img_width = IMG[0].size();
	for (int i = 0; i < img_height; i++) {
		for (int j = 0; j < img_width; j++) {
			FileIn >> pixel;
			IMG[i][j] = (int)pixel;
			//FileIn.seekg(1, SEEK_CUR); // skip " "
		}
	}
	FileIn.close();
}
