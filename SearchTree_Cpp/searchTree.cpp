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
int searchLin(std::vector<dataStruct> database, int tor, int N, int D1, int D2, int D3) {
	int error = 999;
	int cid = -1;
	for (int i = 0; i < database.size(); ++i) {
		if (database[i].N >= N - tor && database[i].N <= N + tor &&
			database[i].d1 >= D1 - tor && database[i].d1 <= D1 + tor &&
			database[i].d2 >= D2 - tor && database[i].d2 <= D2 + tor &&
			database[i].d3 >= D3 - tor && database[i].d3 <= D3 + tor)
		{
			int temp = (N - database[i].N) * (N - database[i].N) + (D1 - database[i].d1) * (D1 - database[i].d1) + (D2 - database[i].d2) * (D2 - database[i].d2) + (D3 - database[i].d3) * (D3 - database[i].d3);
			if (error > temp) {
				error = temp;
				cid = database[i].id;
			}
		}
	}
	return cid;
}

/******************************************* SEARCH 2 ************************************************/
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

	friend int searchPattern(const NodePtr &root, int N, int d1, int d2, int d3) {
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

	friend int searchTolerance(const NodePtr &root, int tor, int N, int D1, int D2, int D3) {
		std::vector<dataStruct> resid;
		for (int n = N - tor; n <= N + tor; ++n)
			for (int d1 = D1 - tor; d1 <= D1 + tor; ++d1)
				for (int d2 = D2 - tor; d2 <= D2 + tor; ++d2)
					for (int d3 = D3 - tor; d3 <= D3 + tor; ++d3) {
						int res = searchPattern(root, n, d1, d2, d3);
						if (res != -1)
							resid.push_back({ n,d1,d2,d3,res });
					}
		if (resid.size() == 0)
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
};
NodePtr buildTree(const std::vector<dataStruct> &database) {
	//Init tree
	NodePtr root(new Node(0));

	for(int i = 0; i < database.size(); ++i) {
		NodePtr ptr = root;

		//Insert N
		size_t it = root->insert(database[i].N, ptr);
		ptr = root->moveToChild(ptr, it);

		//Insert d1
		it = root->insert(database[i].d1, ptr);
		ptr = root->moveToChild(ptr, it);

		//Insert d2
		it = root->insert(database[i].d2, ptr);
		ptr = root->moveToChild(ptr, it);

		//Insert d3
		it = root->insert(database[i].d3, ptr);
		ptr = root->moveToChild(ptr, it);

		//Insert id
		it = root->insert(database[i].id, ptr);
	}
	return root;
}


int main(int agrc, char *argv[]) {
	if (agrc == 3) {
		//1
		const std::string inputFileName(argv[1]);
		std::ifstream fileIn;
		fileIn.open(inputFileName);

		if (!fileIn) {
			printf("File does not exist !!!\n");
			return 0;
		}
		std::vector<dataStruct> database = readInput(fileIn);
		fileIn.close();

		NodePtr root = buildTree(database);
		
		std::cout << searchLin(database, 5, 12, 16, 42, 43) << std::endl;
		std::cout << searchTolerance(root, 5, 12, 16, 42, 43);


	}
	else {
		const char* inputProgram(argv[0]);
		printf("Plz rerun the %s program\n", inputProgram);
	}

	return 0;
}
