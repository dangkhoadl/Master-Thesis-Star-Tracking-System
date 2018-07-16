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
vector<string> read(FILE *fileIn) {
	vector<string> vs;
	char c;
	string temp;
	while ((c = fgetc(fileIn)) != EOF) {
		temp += c;
		if (temp.size() == 32) {
			vs.push_back(temp);
			temp = "";
		}
	}
	return vs;
}

int toDecimal(const string &s, int b) {
	int multiplier = 1;
	int n = 0;

	for (int i = s.size() - 1; i >= 0; --i, multiplier *= b) {
		if (s[i] > '0' && s[i] < '9')
			n += (s[i] - '0') * multiplier;
		else if (s[i] >= 'a' && s[i] <= 'f')
			n += (s[i] - 'a' + 10) * multiplier;
		else if (s[i] >= 'A' && s[i] <= 'F')
			n += (s[i] - 'A' + 10) * multiplier;
	}
	return n;
}
vector<unsigned> process(const vector<string> &vs) {
	vector<unsigned> v;
	for (int i = 0; i < vs.size(); ++i) 
		v.push_back(toDecimal(vs[i], 2));
	return v;
}

void write(FILE *fileOut, const vector<unsigned> &v) {
	for (int i = 0; i < v.size(); ++i) 
		fprintf(fileOut, "%d ", v[i]);
}

int main(int agrc, char *argv[]) {
#ifdef DEBUG
	freopen("..\\Debug\\Cerr.txt", "w", stderr);
	cerr << fixed << setprecision(6);
#endif

	if (agrc == 3) {
		//Input
		const char *inputFileName(argv[1]);
		FILE *fileIn;
		fileIn = fopen(inputFileName, "r");

		if (!fileIn) {
			printf("File does not exist !!!\n");
			return 0;
		}

		//Read
		vector<string> vs = read(fileIn);
		fclose(fileIn);

		//Process
		vector<unsigned> data = process(vs);

		//Output
		const char * outputFileName(argv[2]);
		FILE *fileOut;
		fileOut = fopen(outputFileName, "w");

		//Write
		write(fileOut, data);
		fclose(fileOut);
	}
	else {
		const char* inputProgram(argv[0]);
		printf("Plz rerun the %s program\n", inputProgram);
	}

	return 0;
}