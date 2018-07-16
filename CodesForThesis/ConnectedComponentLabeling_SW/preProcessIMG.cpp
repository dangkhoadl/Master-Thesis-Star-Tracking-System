//#define LINUX
//#define DEBUG

#ifdef LINUX
#include <bits/stdc++.h>
#endif

#ifndef LINUX
#ifdef _MSC_VER
#define _CRT_SECURE_NO_WARNINGS
#endif

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <bitset>
#include <iostream>
#include <fstream>
#include <streambuf>
#include <istream>
#include <vector>
#include <list>
#include <forward_list>
#include <string>
#include <map>
#include <algorithm>
#include <functional>
#include <numeric>
#include <stack>
#include <queue>
#include <set>
#include <iomanip>
#include <sstream>
#include <cmath>
#include <time.h>
#include <random>
#include <unordered_map>
#include <unordered_set>
#include <bitset>
#include <utility>
#include <climits>
#include <cassert>
#include <istream>
#include <random>
#include <iterator>
#include <memory>
#include <cctype>
#endif
using namespace std;

#ifdef DEBUG
#define for_(start,end,step) for(int _ = start; _ < (int)end; _ += step) // [start, end)
#define pr(X) { cerr << #X << " = " << (X) << endl; }
#define pr_(X) { cerr << #X << " = " << (X) << " ; "; }
#define pra(A, start, end) { cerr << #A << '[' << start << ',' << (end - 1) << "] = "; for_(start, end, 1) cerr << A[_] << ' '; cerr << endl; }
#define pra_(A, start, end) { cerr << #A << '[' << start << ',' << (end - 1) << "] = "; for_(start, end, 1) cerr << A[_] << ' '; cerr << " ; "; }
#define prai(A, start, end) { cerr << #A << '[' << start << ',' << (end - 1) << "] = "; for_(start, end, 1) cerr << '[' << _ << ']' << A[_] << ' '; cerr << endl; }
#define prai_(A, start, end) { cerr << #A << '[' << start << ',' << (end - 1) << "] = "; for_(start, end, 1) cerr << '[' << _ << ']' << A[_] << ' '; cerr << " ; "; }
#endif

/*******************************************************************************************/
vector<unsigned> read(std::ifstream &fileIn) {
	vector<unsigned> v;
	while(!fileIn.eof()) {
		unsigned temp = 0;
		fileIn >> temp;
		v.push_back(temp);
	}
	v.pop_back();
	return v;
}


string fromDecimal2(int n, int b) {
	string chars = "0123456789ABCDEF";
	string result = "";

	while (n > 0) {
		result = chars[n % b] + result;
		n /= b;
	}

	return result;
}
vector<string> convert(const vector<unsigned> &v) {
	vector<string> vs;
	for (int i = 0; i < v.size(); ++i) {
		string temp = fromDecimal2(v[i],2);
		string zero(32 - temp.size(), '0');
		vs.push_back(zero+temp);
	}
	return vs;
}

void write(std::ofstream &fileOut,const vector<string> &vs) {
	for (int i = 0; i < vs.size(); ++i) 
		fileOut << vs[i];
}

int main(int agrc, char *argv[]) {
#ifdef DEBUG
	freopen("..\\Debug\\Cerr.txt", "w", stderr);
	cerr << fixed << setprecision(6);
#endif
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
		vector<string> cData = convert(data);
	
		//Output
		const std::string outputFileName(argv[2]);
		std::ofstream fileOut;
		fileOut.open(outputFileName);

		//Write
		write(fileOut, cData);
		fileOut.close();
	}
	else {
		const char* inputProgram(argv[0]);
		printf("Plz rerun the %s program\n", inputProgram);
	}

	return 0;
}
