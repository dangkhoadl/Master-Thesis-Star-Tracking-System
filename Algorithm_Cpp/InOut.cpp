#include "InOut.h"

void readIMG(std::ifstream &FileIn, std::vector<std::vector<int>> &IMG) {
	int img_height = IMG.size();
	int img_width = IMG[0].size();
	for (int i = 0; i < img_height; i++) {
		for (int j = 0; j < img_width; j++) {
			FileIn >> IMG[i][j];
			//FileIn.seekg(1, SEEK_CUR); // skip " "
		}
	}
	FileIn.close();
}
