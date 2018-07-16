
/*------------------------------------- CONFIG ---------------------------------------------------------------*/
#define DEBUG
//#define LINUX

/*------------------------------------- TEMPLATE ---------------------------------------------------------------*/
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
#include <ctime>
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

#define int long long
#define double long double
#define ll long long
#define ull unsigned long long

#define for_i(start,end,step) for(int i = start; i < (int)end; i += step) // [start, end)
#define for_id(start,end,step) for(int i = start; i > (int)end; i += step) // [start, end)
#define for_j(start,end,step) for(int j = start; j < (int)end; j += step) // [start, end)
#define for_jd(start,end,step) for(int j = start; j > (int)end; j += step) // [start, end)
#define for_(start,end,step) for(int _ = start; _ < (int)end; _ += step) // [start, end)
#define for__(start,end,step) for(int __ = start; __ < (int)end; __ += step) // [start, end)
#define for_it(A) for(auto it = A.begin(); it != A.end(); ++it)

#ifdef DEBUG
#define pr(X) { cerr << #X << " = " << (X) << endl; }
#define pr_(X) { cerr << #X << " = " << (X) << " ; "; }
#define pra(A, start, end) { cerr << #A << '[' << start << ',' << (end - 1) << "] = "; for_(start, end, 1) cerr << A[_] << ' '; cerr << endl; }
#define pra_(A, start, end) { cerr << #A << '[' << start << ',' << (end - 1) << "] = "; for_(start, end, 1) cerr << A[_] << ' '; cerr << " ; "; }
#define prai(A, start, end) { cerr << #A << '[' << start << ',' << (end - 1) << "] = "; for_(start, end, 1) cerr << '[' << _ << ']' << A[_] << ' '; cerr << endl; }
#define prai_(A, start, end) { cerr << #A << '[' << start << ',' << (end - 1) << "] = "; for_(start, end, 1) cerr << '[' << _ << ']' << A[_] << ' '; cerr << " ; "; }
#define pra2(A, start1, end1, start2, end2) {for_(start1, end1, 1) {for__(start2, end2, 1) cerr << '[' << _ << "]["  << __ << ']' << A[_][__] << ' '; cerr << endl;} }
#endif

const int inf = 1e9 + 7;
#define sq(x) ((x) * (x))
#define PI (2 * acos((double)0))
double safe_sqrt(double x) { return sqrt(max((double)0.0, x)); }

typedef pair<int, int> pii;
typedef vector<pair<int, int>> vii;
#define fi first
#define se second
typedef vector<int> vi;
typedef vector<vector<int>> vvi;
#define pb push_back
#define sz(a) (int)(a).size()
#define bg(a) (a).begin()
#define en(a) (a).end()
#define all(a) (a).begin(), (a).end()
#define ms(a,x) memset(a, x, sizeof(a)) //Care: Only init with 0,-1 and char[]
/*----------------------------------- PARAMETERS -----------------------------------------------------------------*/
#define IMG_HEIGHT 512
#define IMG_WIDTH 512
#define THRESHOLD 70
#define MAX 9999

vvi Image(IMG_HEIGHT + 2, vi(IMG_WIDTH + 2));
vvi checkIMG(IMG_HEIGHT + 2, vi(IMG_WIDTH + 2, 0));
const vii searchDir = { { 0,0 },{ -1,-1 },{ -1,0 },{ -1,1 },{ 0,-1 },{ 0,1 },{ 1,-1 },{ 1,0 },{ 1,1 } };

struct starDataS {
	int totalIntesity;
	int area;
	int sumX;
	int sumY;
	int centreX;
	int centreY;
};
vector<starDataS> starData;
/*------------------------------------- FUNCTIONS ---------------------------------------------------------------*/
void readImage() {
	for_i(0, IMG_HEIGHT, 1)
		for_j(0, IMG_WIDTH, 1)
		cin >> Image[i][j];
}

void dfs(int x, int y, starDataS &star) {
	for_i(0, sz(searchDir), 1)
		if (Image[x + searchDir[i].fi][y + searchDir[i].se] >= THRESHOLD && checkIMG[x + searchDir[i].fi][y + searchDir[i].se] != 1) {
			checkIMG[x + searchDir[i].fi][y + searchDir[i].se] = 1;

			star.totalIntesity += Image[x + searchDir[i].fi][y + searchDir[i].se];
			++star.area;
			star.sumX += (x + searchDir[i].fi) * Image[x + searchDir[i].fi][y + searchDir[i].se];
			star.sumY += (y + searchDir[i].se) * Image[x + searchDir[i].fi][y + searchDir[i].se];

			dfs(x + searchDir[i].fi, y + searchDir[i].se, star);
		}
}

void centroid() {
	for_i(0, IMG_HEIGHT + 2, 1)
		for_j(0, IMG_WIDTH + 2, 1) {
		if (Image[i][j] >= THRESHOLD && checkIMG[i][j] != 1) {
			starDataS star = { 0,0,0,0,0,0 };
			dfs(i, j, star);
			star.centreX = round((float)star.sumX / star.totalIntesity);
			star.centreY = round((float)star.sumY / star.totalIntesity);
			starData.pb(star);
		}
		checkIMG[i][j] = 1;
	}
}

void printResult() {
	for_i(0, sz(starData), 1)
		printf("Star[%lld]: x = %lld, y = %lld\n", i + 1, starData[i].centreX, starData[i].centreY);

	int minA = MAX;
	int maxA = 0;
	int avg = 0;
	for_i(0, sz(starData), 1) {
		minA = min(starData[i].area, minA);
		maxA = max(starData[i].area, maxA);
		avg += starData[i].area;
	}

	cout << endl << "Min area = " << minA << ", Max area = " << maxA << ", Avg area = " << avg / sz(starData) << endl;
}

ll solve() {
	readImage();
	centroid();
	printResult();
	return 0;
}
/*------------------------------------- MAIN ---------------------------------------------------------------*/
int32_t main(int agrc, char *argv[]) {
#ifdef DEBUG
	freopen("..\\Debug\\Input.txt", "r", stdin);
	freopen("..\\Debug\\Output.txt", "w", stdout);
	freopen("..\\Debug\\Cerr.txt", "w", stderr);
	cerr << fixed << setprecision(6);
#endif
	ios::sync_with_stdio(false);
	cin.tie(false);
	cout << fixed << setprecision(11);
	/*----------------------------------------------------------------------------------------------------*/
	//InOut



	//Set/Clear parameters


	//solve
	solve();

	return 0;
}
