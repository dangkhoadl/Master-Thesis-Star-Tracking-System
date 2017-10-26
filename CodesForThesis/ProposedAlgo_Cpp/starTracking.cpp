
#include "./Libs/InOut.h"
#include "./Libs/Centroider.h"
#include "./Libs/Algorithm.h"
#include "./Libs/PatternMatching.h"

//Initialize camera parameter
#define img_height 512
#define img_width 512

//#define pixelsize 7e-3
#define FOV 256
//sensor magnitude threshold 5M

//SPD parameters
#define TSIZE 14
#define NUMBEROFENTRIES 1500

//Centroiding parameter
#define THRESHOLDINGLEVEL 77 
#define AREATHRESHOLD 1

// Database
#define CATALOG "./Catalogs/proposedAlgo_catalog2.txt"

using namespace std;

// #define DEBUG

#ifdef DEBUG
#include <bits/stdc++.h>
#define sz(a) (int)(a).size()
#define REP(a) for(int iii=0, _a=(a); iii < _a; ++iii)
#define FOR(iii,start,end) for(int iii=(start), _end=(end); iii < _end; ++iii)               // [start, end)
#define FORD(iii,start,end) for(int iii=(start), _end=(end); iii > _end; --iii)              // [start, end)
#define for_it(A) for(auto it = (A.begin()), _end(A.end()); it != _end; ++it)
#define quit exit(0);
#define nl cerr<<endl;
template<typename T,typename TT> inline ostream& operator<<(ostream &s,pair<T,TT> t) {return s<<"("<<t.first<<","<<t.second<<")";}
#define pr(args...) { vector<string> _v = split(#args, ','); err(_v.begin(), args); cerr << endl;}
vector<string> split(const string& s, char c) {vector<string> v;stringstream ssss_(s);string x;while(getline(ssss_, x, c)) {v.emplace_back(x);}return move(v);}
void err(vector<string>::iterator it) {}
template<typename T, typename... Args> void err(vector<string>::iterator it, T a, Args... args) {cerr << it -> substr((*it)[0] == ' ', it->length()) << " = " << a << ", ";err(++it, args...);}
#define pra(A, start, end) {cerr << #A << '[' << start << ',' << (end - 1) << "] = ";FOR(_,start, end) cerr << A[_] << ' '; cerr << endl; }
#define prai(A, start, end) { cerr << #A << '[' << start << ',' << (end - 1) << "] = ";FOR(_,start, end) cerr << '[' << _ << ']' << A[_] << ' '; cerr << endl; }
#define prit(A) {cerr << #A << " = ";for_it(A) {cerr << *it << ' ';}cerr << endl;}
#define praa(A, start1, end1, start2, end2) {FOR(_,start1, end1) {FOR(__,start2, end2) {ostringstream ss;ss << A[_][__];cerr << setw(10) << left << ss.str();}cerr << endl;}}
#define praai(A, start1, end1, start2, end2) {FOR(_,start1, end1) {FOR(__,start2, end2) {ostringstream ss;ss << '[' << _ << "]["  << __ << "]" << A[_][__];cerr << setw(17) << left << ss.str();}cerr << endl;}}
template<typename T> void prav(const vector<T> *a, int start, int end) {FOR(_,start,end) {FOR(__,0,sz(a[_])) {ostringstream ss;ss << a[_][__];cerr << setw(10) << left << ss.str();} cerr << endl;}}
template<typename T> void pravi(const vector<T> *a, int start, int end) {FOR(_,start,end) {FOR(__,0,sz(a[_])) {ostringstream ss;ss << '[' << _ << "][" << __ << ']' << a[_][__];cerr << setw(17) << left << ss.str();} cerr << endl;}}
template<typename T> void prvv(const vector<vector<T>> &a, int start, int end) {FOR(_,start,end) {FOR(__,0,sz(a[_])) {ostringstream ss;ss << a[_][__];cerr << setw(10) << left << ss.str();}cerr << endl;}}
template<typename T> void prvvi(const vector<vector<T>> &a, int start, int end) {FOR(_,start,end) {FOR(__,0,sz(a[_])) {ostringstream ss;ss << '[' << _ << "][" << __ << ']' << a[_][__];cerr << setw(17) << left << ss.str();}cerr << endl;}}
template<typename T> void prS(const stack<T> &a) {stack<T> s(a);cerr << "stack =  [top] ";while(!s.empty()) {cerr << s.top() << ' ';s.pop();}cerr << endl;}
template<typename T> void prQ(const queue<T> &a) {queue<T> q(a);cerr << "queue =  [front] ";while(!q.empty()) {cerr << q.front() << ' ';q.pop();}cerr << "[back]" << endl;}
template<typename T> void prPQ(const priority_queue<T> &a) {priority_queue<T> pq(a);cerr << "heap =  [top] ";while(!pq.empty()) {cerr << pq.top() << ' ';pq.pop();}cerr << endl;}
#endif

int main(int agrc, char *argv[]) {
#ifdef DEBUG
    freopen("cerr.ce", "w", stderr);
    freopen("output.out", "w", stdout);
#endif

    if (agrc == 2) {
        const string imgName(argv[1]);
        ifstream imgIn;
        imgIn.open(imgName);
        if (!imgIn) {
            cout << "\nIMG not exist";
            cout << endl;
            return 0;
        }
        
        // Read Input
        vector<vector<int>> IMG(img_height, vector<int>(img_width,0));
        readIMG(imgIn, IMG);
        
        // Centroiding Algorithm
        int NumberOfStar = 0;
        vector<Star> starList = centroider(IMG, THRESHOLDINGLEVEL, AREATHRESHOLD, NumberOfStar);

        // Proposed Algorithm
        StarPattern starPatternLin = getStarPattern(starList, FOV);
        StarPattern starPatternTree(starPatternLin);

        // read input database
        ifstream catalogIn;
        catalogIn.open(CATALOG);
        vector<dataStruct> database = readCatalog(catalogIn);

        // Linear search
        starPatternLin.starID = searchLin(database, 30,starPatternLin.N, starPatternLin.d1, starPatternLin.d2, starPatternLin.d3);

        // Tree search
        // NodePtr root = buildTree(database);
        // starPatternTree.starID = searchTolerance(root,100 ,starPatternTree.N, starPatternTree.d1, starPatternTree.d2, starPatternTree.d3);

        // Output
        cout << starPatternLin.starID << endl;
        // cout << starPatternLin.starID << ' ' << starPatternTree.starID << endl;
    }
    else {
        cout << "Correct Input: ./starTracking.exe [IMG_file]" << endl;
    }
    return 0;
}
