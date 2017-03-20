//#define LINUX
#define DEBUG

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
#define for__(start,end,step) for(int __ = start; __ < (int)end; __ += step) // [start, end)
#define pr(X) { cerr << #X << " = " << (X) << endl; }
#define pr_(X) { cerr << #X << " = " << (X) << " ; "; }
#define pra(A, start, end) { cerr << #A << '[' << start << ',' << (end - 1) << "] = "; for_(start, end, 1) cerr << A[_] << ' '; cerr << endl; }
#define pra_(A, start, end) { cerr << #A << '[' << start << ',' << (end - 1) << "] = "; for_(start, end, 1) cerr << A[_] << ' '; cerr << " ; "; }
#define prai(A, start, end) { cerr << #A << '[' << start << ',' << (end - 1) << "] = "; for_(start, end, 1) cerr << '[' << _ << ']' << A[_] << ' '; cerr << endl; }
#define prai_(A, start, end) { cerr << #A << '[' << start << ',' << (end - 1) << "] = "; for_(start, end, 1) cerr << '[' << _ << ']' << A[_] << ' '; cerr << " ; "; }
#define pra2(A, start1, end1, start2, end2) {for_(start1, end1, 1) {for__(start2, end2, 1) cerr << '[' << _ << "]["  << __ << ']' << A[_][__] << ' '; cerr << endl;} }
#endif 

/*******************************************************************************************/
struct dataStruct {
	int N;
	int d1;
	int d2;
	int d3;
	int id;
};
vector<dataStruct> database1;


void readInput1(std::ifstream &fileIn) {
	std::string line;
	while (std::getline(fileIn, line)) {
		std::stringstream lineStream(line);
		int Nt, d1t, d2t, d3t, idt;
		lineStream >> Nt >> d1t >> d2t >> d3t >> idt;
		database1.push_back({ Nt,d1t,d2t,d3t,idt });
	}
}

class Node;
typedef std::shared_ptr<Node> NodePtr;
class Node {
public:
	int key_;
	NodePtr parent_;
	std::vector<NodePtr> children_;

	struct CompareKey {
		CompareKey(const int &val) : val_(val) {}
		bool operator()(const NodePtr &element) const {
			return val_ == element->key_;
		}
	private:
		int val_;
	};

public:
	Node(const int &key) : key_(key), parent_(nullptr) {}
	Node(const int &key, const NodePtr &parent) : key_(key), parent_(parent) {
		if (parent_ == nullptr) return;
		parent_->children_.push_back((NodePtr)this);
	}

	size_t insert(const int &data, const NodePtr &parentNode) {
		auto it = std::find_if(parentNode->children_.begin(), parentNode->children_.end(), CompareKey(data));
		if (it == parentNode->children_.end()) {
			new Node(data, parentNode);
			return parentNode->children_.size() - 1;
		}
		return it - parentNode->children_.begin();
	}

	NodePtr moveToChild(const NodePtr &pt, size_t it) const {
		return pt->children_[it];
	}

	friend int searchPattern(const NodePtr &root,int N, int d1, int d2, int d3) {
		NodePtr ptr = root;

		//N
		auto it = std::find_if(ptr->children_.begin(), ptr->children_.end(), CompareKey(N));
		if (it == ptr->children_.end())
			return -1;

		//d1
		ptr = root->moveToChild(ptr, it - ptr->children_.begin());
		it = std::find_if(ptr->children_.begin(), ptr->children_.end(), CompareKey(d1));
		if (it == ptr->children_.end())
			return -1;

		//d2
		ptr = root->moveToChild(ptr, it - ptr->children_.begin());
		it = std::find_if(ptr->children_.begin(), ptr->children_.end(), CompareKey(d2));
		if (it == ptr->children_.end())
			return -1;

		//d3
		ptr = root->moveToChild(ptr, it - ptr->children_.begin());
		it = std::find_if(ptr->children_.begin(), ptr->children_.end(), CompareKey(d3));
		if (it == ptr->children_.end())
			return -1;

		//return id
		ptr = root->moveToChild(ptr, it - ptr->children_.begin());
		return ptr->children_.back()->key_;
	}
};


int searchTolerance(const NodePtr &root, int tor, int N, int D1, int D2, int D3) {
	vector<dataStruct> resid;
	for(int n = N-tor; n <= N + tor; ++n)
		for (int d1 = D1 - tor; d1 <= D1 + tor; ++d1)
			for (int d2 = D2 - tor; d2 <= D2 + tor; ++d2)
				for (int d3 = D3 - tor; d3 <= D3 + tor; ++d3) {
					int res = searchPattern(root, n, d1, d2, d3);
					if (res != -1)
						resid.push_back({n,d1,d2,d3,res});
				}
	if(resid.size() == 0)
		return -1;

	int error = 999;
	int cid = resid[0].id;
	for (int i = 0; i < resid.size(); ++i) {
		int temp = (N - resid[i].N) * (N - resid[i].N) + (D1 - resid[i].d1) * (D1 - resid[i].d1) + (D2 - resid[i].d2) * (D2 - resid[i].d2) + (D3 - resid[i].d3) * (D3 - resid[i].d3);
		if (error > temp) {
			error = temp;
			cid = resid[i].id;
		}
	}
	return cid;
}

NodePtr readInput2(std::ifstream &fileIn) {
	//Init tree
	NodePtr root(new Node(0));

	std::string line;
	while (std::getline(fileIn, line)) {
		std::stringstream lineStream(line);
		int Nt, d1t, d2t, d3t, idt;
		lineStream >> Nt >> d1t >> d2t >> d3t >> idt;

		NodePtr ptr = root;

		//Insert N
		size_t it = root->insert(Nt, ptr);
		ptr = root->moveToChild(ptr, it);

		//Insert d1
		it = root->insert(d1t, ptr);
		ptr = root->moveToChild(ptr, it);

		//Insert d2
		it = root->insert(d2t, ptr);
		ptr = root->moveToChild(ptr, it);

		//Insert d3
		it = root->insert(d3t, ptr);
		ptr = root->moveToChild(ptr, it);

		//Insert id
		it = root->insert(idt, ptr);
	}
	return root;
}

int main(int agrc, char *argv[]) {
#ifdef DEBUG
	freopen("..\\Debug\\Cerr.txt", "w", stderr);
	cerr << fixed << setprecision(6);
#endif
	if (agrc == 3) {
		//Input
		const std::string inputFileName(argv[1]);
		std::ifstream fileIn;
		fileIn.open(inputFileName);

		if (!fileIn) {
			printf("File does not exist !!!\n");
			return 0;
		}
		//Read
		NodePtr root = readInput2(fileIn);
		fileIn.close();

		//Process
		cout << searchTolerance(root, 4, 13, 25, 40, 56);
	}
	else {
		const char* inputProgram(argv[0]);
		printf("Plz rerun the %s program\n", inputProgram);
	}

	return 0;
}
