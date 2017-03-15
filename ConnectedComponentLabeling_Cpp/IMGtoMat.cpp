
#include <iostream>
#include <vector>
#include <fstream>

using namespace std;

/*******************************************************************************************/
vector<unsigned> read(std::ifstream &fileIn) {
	vector<unsigned> v;
	while (!fileIn.eof()) {
		unsigned temp = 0;
		fileIn >> temp;
		v.push_back(temp);
	}
	v.pop_back();
	return v;
}



void write(std::ofstream &fileOut, const vector<unsigned> &data) {
	fileOut << "unsigned IMG[IMG_HEIGHT * IMG_WIDTH] = { ";
	for (int i = 0; i < data.size(); ++i)
		i == data.size() - 1 ? fileOut << data[i] << " };" : fileOut << data[i] << ", ";
}

int main(int agrc, char *argv[]) {
	if (agrc == 3) {
		//Input
		const char *inputFileName(argv[1]);
		std::ifstream fileIn;
		fileIn.open(inputFileName);

		if (!fileIn) {
			printf("File does not exist !!!\n");
			return 0;
		}

		//Read
		vector<unsigned> data = read(fileIn);
		fileIn.close();

		//Process
		

		//Output
		const std::string outputFileName(argv[2]);
		std::ofstream fileOut;
		fileOut.open(outputFileName);

		//Write
		write(fileOut, data);
		fileOut.close();
	}
	else {
		const char* inputProgram(argv[0]);
		printf("Plz rerun the %s program\n", inputProgram);
	}
	return 0;
}
