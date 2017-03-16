#include <hls_math.h>
#include <ap_axi_sdata.h>
#include <hls_stream.h>

// Declare 32-bit integer with side-channel (Includes TLAST signal)
typedef ap_axis<32,2,5,6> intSdCh;

#define MAX_IMG_HEIGHT 1024
#define MAX_IMG_WIDTH 1024
#define MAXTHPIXEL 1024
#define THRESHOLD 70
#define MAX 999
#define MAX_STAR_DATA_SIZE 40
#define MAX_SET_SIZE 40
#define MAX_CENTROID_DATA 40

int Image[MAXTHPIXEL];
int mark[MAXTHPIXEL];
int lbImage[MAXTHPIXEL];

int set[MAX_SET_SIZE];

bool status[MAX_STAR_DATA_SIZE];
int totalIntensity[MAX_STAR_DATA_SIZE];
int x[MAX_STAR_DATA_SIZE];
int y[MAX_STAR_DATA_SIZE];

int find(int id) {
	int temp;
	temp = id;
	while (temp != set[temp]) {
#pragma HLS PIPELINE
		temp = set[temp];
	}
	return temp;
}

int binarySearch(int data, int pixNum) {
	int left = 0;
	int right = pixNum - 1;
	int mid = 0;
	while (true) {
#pragma HLS PIPELINE
		mid = left + (right - left) / 2;
		if (data == mark[mid]) {
			return mid;
		}

		if (left > right || data < mark[left] || data > mark[right])
			return -1;

		if (data > mark[mid])
			left = mid + 1;
		else
			right = mid - 1;
	}
	return -1;
}

/*******************************************************************************************/
int firstPass(int imgHeight, int imgWidth, int pixNum) {
	int k = 0, i = 0, j = 0;
	int label = 0;
	int prevAbove = 0;
	int prevLeft = 0;
	int setCount = 1;
	int min = 0;
	int max = MAX;
	int pos = 0;
	int posA = 0;
	int posL = 0;
	for (pos = 0; pos < pixNum; ++pos) {
#pragma HLS PIPELINE
		k = mark[pos];
		i = k / imgHeight;
		j = k % imgHeight;
		posA = binarySearch((i - 1)*imgHeight + j, pixNum);
		posL = binarySearch(i*imgHeight + j - 1, pixNum);
		prevAbove = (i != 0 && posA != -1) ? lbImage[posA] : MAX;
		prevLeft = (j != 0 && posL != -1) ? lbImage[posL] : MAX;

		if (prevAbove == MAX && prevLeft == MAX) {
			lbImage[pos] = ++label;
			set[setCount] = label;

			//
			status[setCount] = true;
			totalIntensity[setCount] = Image[pos];
			x[setCount] = i * Image[pos];
			y[setCount] = j * Image[pos];

			++setCount;
		}
		else {
			//Joint Set
			min = prevAbove < prevLeft ? prevAbove : prevLeft;
			max = prevAbove > prevLeft ? prevAbove : prevLeft;
			if (max != MAX) {
				set[max] = find(min);
			}
			else {
				set[min] = find(min);
			}
			lbImage[pos] = min;

			//Update data
			totalIntensity[min] += Image[pos];
			x[min] += i * Image[pos];
			y[min] += j * Image[pos];
		}
	}
	return setCount;
}

int calCentroid(int setCount, int X[MAX_CENTROID_DATA], int Y[MAX_CENTROID_DATA]) {
	int i = 0;
	int root = 0;
	int centroidDataCount = 0;

	for (i = 1; i < setCount; ++i) {
#pragma HLS PIPELINE
		if (set[i] != i) {
			root = find(i);
			totalIntensity[root] += totalIntensity[i];
			x[root] += x[i];
			y[root] += y[i];
			status[i] = false;
		}
	}

	//cal
	for (i = 1; i < setCount; ++i) {
#pragma HLS PIPELINE
		if (status[i] == true) {
			X[centroidDataCount] = round((float)x[i] / totalIntensity[i]);
			Y[centroidDataCount] = round((float)y[i] / totalIntensity[i]);

			++centroidDataCount;
		}
	}
	return centroidDataCount;
}

int CCLabel(hls::stream<intSdCh> &streamImage, int imgHeight, int imgWidth, int X[MAX_CENTROID_DATA], int Y[MAX_CENTROID_DATA]) {
#pragma HLS INTERFACE s_axilite port=return bundle=CRTLS
#pragma HLS INTERFACE axis port=streamImage
#pragma HLS INTERFACE s_axilite port=imgHeight bundle=CRTLS
#pragma HLS INTERFACE s_axilite port=imgWidth bundle=CRTLS
#pragma HLS INTERFACE bram port=X bundle=CRTLS
#pragma HLS INTERFACE bram port=Y bundle=CRTLS

	//#pragma HLS RESOURCE variable=Image core=RAM_1P_BRAM
	int idx = 0;
	int pixNum = 0;
	int setCount = 0;
	int centroidDataCount = 0;
	intSdCh valIn;
	int rData;

	for (idx = 0; idx < (imgHeight*imgWidth); ++idx) {
#pragma HLS PIPELINE
		valIn = streamImage.read();
		rData = valIn.data;
		if (rData >= THRESHOLD) {
			mark[pixNum] = idx;
			Image[pixNum] = rData;
			++pixNum;
		}
	}
	setCount = firstPass(imgHeight, imgWidth, pixNum);
	centroidDataCount = calCentroid(setCount, X, Y);

	return centroidDataCount;
}
