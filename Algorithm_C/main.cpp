#include "InOut.h"
#include "Centroider.h"
#include "Algorithm.h"
#include <time.h>

//Initialize camera parameter
#define img_height 512
#define img_width 512
//#define pixelsize 7e-3
#define FOV 256
//sensor magnitude threshold 5M

//Initialize camera attitude 
//int RA=15;
//int DEC=45;
//int angle=450;

//SPD parameters
#define TSIZE 14
#define NUMBEROFENTRIES 1500

//Centroiding parameter
#define THRESHOLDINGLEVEL 77 
#define AREATHRESHOLD 1

int main()
{
/*********************************************** RUNTIME ***********************************************************************************/
	time_t start, end;
	time(&start);
/*________________ READ INPUT IMG ________________________________________________________________*/
	//Declare IMG int
	int **IMG;
	IMG = new int*[img_height];
	for (int i = 0; i < img_height; i++)
	{
		*(IMG + i) = new int[img_width];
	}

	//Read IMG from txt
	ifstream FileIn("IMG_1_-1.txt", ios_base::in);
	ReadIMG(FileIn, img_height, img_width, IMG);

	//test
	ofstream imgOut("RAW_IMG.txt", ios_base::out);
	TestIMG(imgOut,img_height,img_width,IMG);

/*________________ READSPD ________________________________________________________________*/
	//Initalize a table
	NODE *table[TSIZE];
	for (int i = 0; i <= TSIZE - 1; i++)
		table[i] = NULL;
	//Read SPD and insert entries into the table
	ifstream SPDIn("pattern_catalogue.txt", ios_base::in);
	ReadSPD(SPDIn, table, NUMBEROFENTRIES);

	//test
	ofstream tableOut("TABLE.txt", ios_base::out);
	DisplayTable(tableOut, table, TSIZE);
	
/*________________ CENTROIDING ________________________________________________________________*/
	//Level thresholding
	LevelThreshold(img_height, img_width, IMG, THRESHOLDINGLEVEL);
	//test
	ofstream thresholdedImgOut("THRESHOLDEDIMG.txt", ios_base::out);
	TestIMG(thresholdedImgOut,img_height,img_width,IMG);
	
	//Centroiding
	STAR *starList = new STAR;
	int NumberOfStar;
	starList = Centroider(img_height, img_width,IMG,AREATHRESHOLD,NumberOfStar);
	//test
	ofstream starL("STARLIST.txt", ios_base::out);
	DisplayStarList(starL, starList,NumberOfStar);
	

/*________________ ALGORITHM ________________________________________________________________*/
	//Calculate the star distance to starRef
	starList = CalculateDistance2StarRef(starList);

	//SortList
	STAR *sortedList = new STAR;
	sortedList = SortList(starList->next,sortedList);
	//test
	ofstream sortedStarL("SORTEDLIST.txt", ios_base::out);
	DisplayStarList(sortedStarL, sortedList,NumberOfStar);

	//Get star pattern
	STARPATTERN *starPattern = new STARPATTERN;
	starPattern = GetStarPattern(sortedList,starPattern,FOV);
	//test
	ofstream starPatternOut("STARPATTERNOUT.txt", ios_base::out);
	DisplayStarPattern(starPatternOut, starPattern);

	//Matching
	NODE *result = new NODE;
	result = MatchPatternWithSPD(table, starPattern, result);
	//Result
	cout << result->info.starID << ' ' << result->info.sqError << endl;
	//test
	ofstream resultOut("RESULT.txt", ios_base::out);
	DisplayResult(resultOut,result);

	

/*________________ HOUSEKEEPING ________________________________________________________________*/
	//Free input IMG
	for (int i = 0; i < img_height; i++)
	{
		delete[] IMG[i];
	}
	delete[] IMG;

	//Free star list
	starList = FreeList(starList);
	//Free sorted list
	sortedList = FreeList(sortedList);

	//Free star pattern
	delete[] starPattern;

	//Free result
	delete[] result;

	//Free the table
	for (int i = 0; i <= TSIZE - 1; i++)
		delete table[i];

/*********************************************** RUNTIME ***********************************************************************************/
	time(&end);
	double dif = difftime(end, start);
	printf("Elasped time is %.2lf seconds.", dif);

	cout << endl;
	system("pause");
	return 0;
}