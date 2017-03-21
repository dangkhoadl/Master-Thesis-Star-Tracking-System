#include <iostream>
#include <vector>
#include <memory>
#include <algorithm>
#include <fstream>
#include <sstream>

/**************************************** DATASTRUCT ***************************************************/
struct dataStruct {
	int N;
	int d1;
	int d2;
	int d3;
	int id;
};
/***************************************** SEARCH 1 **************************************************/
std::vector<dataStruct> readInput(std::ifstream &fileIn) {
	std::vector<dataStruct> database;
	std::string line;
	while (std::getline(fileIn, line)) {
		std::stringstream lineStream(line);
		int Nt, d1t, d2t, d3t, idt;
		lineStream >> Nt >> d1t >> d2t >> d3t >> idt;
		database.push_back({ Nt,d1t,d2t,d3t,idt });
	}
	return database;
}

void writeMAt(std::ofstream &fileOut, const std::vector<dataStruct> &database) {
	fileOut << "#ifndef STARPATTERNDATABASE_H_" << std::endl;
	fileOut << "#define STARPATTERNDATABASE_H_" << std::endl << std::endl;
	fileOut << "#define DATABASESIZE " << database.size() << std::endl;
	fileOut << "struct dataStruct {" << std::endl;
	fileOut << "	int N;" << std::endl;
	fileOut << "	int d1;" << std::endl;
	fileOut << "	int d2;" << std::endl;
	fileOut << "	int d3;" << std::endl;
	fileOut << "	int id;" << std::endl;
	fileOut << "};" << std::endl;

	fileOut << "int database [DATABASESIZE][5] = { " << std::endl;
	for (int i = 0; i < database.size(); ++i) {
		fileOut << "	{" << database[i].N << ", " << database[i].d1 << ", " << database[i].d2 << ", " << database[i].d3 << ", " << database[i].id << '}';
		if(i != database.size() - 1)
			fileOut << ',' << std::endl;
		else
			fileOut << "};";
	}
	fileOut << std::endl << std::endl << "#endif" << std::endl;
}


int main(int agrc, char *argv[]) {
	if (agrc == 3) {
		const std::string inputFileName(argv[1]);
		std::ifstream fileIn;
		fileIn.open(inputFileName);

		if (!fileIn) {
			printf("File does not exist !!!\n");
			return 0;
		}
		
		//Read
		std::vector<dataStruct> database = readInput(fileIn);
		fileIn.close();

		
		//Output
		const std::string outputFileName(argv[2]);
		std::ofstream fileOut;
		fileOut.open(outputFileName);

		//Write
		writeMAt(fileOut, database);
		fileOut.close();
	}
	else {
		const char* inputProgram(argv[0]);
		printf("Plz rerun the %s program\n", inputProgram);
	}

	return 0;
}
