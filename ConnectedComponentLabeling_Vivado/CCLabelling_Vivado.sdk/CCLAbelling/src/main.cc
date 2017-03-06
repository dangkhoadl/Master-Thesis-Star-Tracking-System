#include <cstdio>
#include <cmath>
#include <xparameters.h>
#include "xCCLabel.h"
#include "platform.h"
#include "AxiTimerHelper.h"


#define IMG_HEIGHT 8
#define IMG_WIDTH 8

unsigned *X = (unsigned *)0x40000000;
unsigned *Y = (unsigned *)0x40010000;
unsigned *Image = (unsigned *)0x40002000;

XCclabel cCLabel;
XCclabel_Config *cCLabel_cfg;

#define INPUT_IMAGE_CORE "D:\\zedboard_projects\\CCLabelling_Vivado\\Input\\smallDataSet.txt"



unsigned int float_to_u32(float val) {
	unsigned int result;
	union float_bytes {
		float v;
		unsigned char bytes[4];
	} data;
	data.v = val;
	result = (data.bytes[3] << 24) + (data.bytes[2] << 16) + (data.bytes[1] << 8) + (data.bytes[0]);
	return result;
}

float u32_to_float(unsigned int val) {
	union {
		float val_float;
		unsigned char bytes[4];
	} data;
	data.bytes[3] = (val >> (8*3)) & 0xff;
	data.bytes[2] = (val >> (8*2)) & 0xff;
	data.bytes[1] = (val >> (8*1)) & 0xff;
	data.bytes[0] = (val >> (8*0)) & 0xff;
	return data.val_float;
}

void init_core() {
	int status = 0;

	cCLabel_cfg = XCclabel_LookupConfig(XPAR_CCLABEL_0_DEVICE_ID);
	if (!cCLabel_cfg) {
		printf("Error loading config\n");
	}
	else {
		status = XCclabel_CfgInitialize(&cCLabel,cCLabel_cfg);
		if (status != XST_SUCCESS) {
			printf("Error initializing\n");
		}
	}
}

void readImage(FILE *&fileIn) {
	for (int i = 0; i < IMG_HEIGHT; ++i) {
		for (int j = 0; j < IMG_WIDTH; ++j) {
			fscanf(fileIn, "%d", Image + i*IMG_HEIGHT + j);
			printf("%d %d %d\n", i,j, *(Image + i*IMG_HEIGHT + j));
		}
	}
	fclose(fileIn);
}

int main() {
	init_platform();
	printf("dsfsdfdsfsd \n\n\n");
	//Initialize IP core
	init_core();
	XCclabel_EnableAutoRestart(&cCLabel);

	//Input
	FILE *fileIn;
	const char *inputFileName(INPUT_IMAGE_CORE);
	fileIn = fopen(inputFileName, "r");

	readImage(fileIn);

	/********************************************** SOFTWARE ****************************************************************/





	/********************************************** HARDWARE ****************************************************************/

	//Start IP core
	XCclabel_Start(&cCLabel);

	// Wait until it's done
	while(!XCclabel_IsDone(&cCLabel));

	//Output
	float centroidCount = u32_to_float(XCclabel_Get_return(&cCLabel));
	printf("%f", centroidCount);


	/********************************************** STATS ****************************************************************/



	cleanup_platform();
	return 0;
}
