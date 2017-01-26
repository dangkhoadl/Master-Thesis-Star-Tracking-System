#include "Centroider.h"

void LevelThreshold(int img_height,int img_width,int **IMG, int level)
{
	for (int i = 0; i < img_height; i++)
	{
		for (int j = 0; j < img_width; j++)
		{
			if (IMG[i][j] < level)
			{
				IMG[i][j] = 0;
			}
		}
	}
}

STAR* Centroider(int img_height, int img_width,int **IMG, int areaThreshold, int &numberOfStar)
{
	//Declare refIMG 
	int **refIMG;
	refIMG = new int*[img_height];
	for (int i = 0; i < img_height; i++)
	{
		*(refIMG + i) = new int[img_width];
	}
	//Set refIMG[][] = 0
	for (int i = 0; i < img_height; i++)
	{
		for (int j = 0; j < img_width; j++)
		{
			refIMG[i][j] = 0;
		}
	}
	//Declare variables
	int count=0;
	//Init the Star Sorted Linked List
	STAR *start = NULL;

	//scan and perform search
	for (int i = 0; i < img_height; i++)
	{
		for (int j = 0; j < img_width; j++)
		{
			//If this pixel is not checked && has a value
			if (!refIMG[i][j] && IMG[i][j] > 0)
			{
				//Declare stardata
				STARDATA *data = new STARDATA;
				data->sumOfXproduct = 0;
				data->sumOfYproduct = 0;
				data->sum = 0;
				data->area = 0;

				//Perform a recursive search
				Search(i,j,img_height,img_width,data,IMG,refIMG);

				//Create and Add star to a Sorted Linked List
				start = InSert2SortedList(start, img_height, img_width, data->sumOfXproduct / data->sum, data->sumOfYproduct / data->sum, data->area);
				count++;

				//Free stardata
				delete data;
			}
		}
	}

	//Update number Of Stars
	numberOfStar = count;

	//free refIMG
	for (int i = 0; i < img_height; i++)
	{
		delete[] refIMG[i];
	}
	delete[] refIMG;

	//return the list
	return start;
}

void Search(int pixelHeight, int pixelWidth, int img_height, int img_width, STARDATA *data, int **IMG, int **refIMG)
{
	//Search pattern of 8 neighbor pixels
	//		6	7	0
	//		5	*	1
	//		4	3	2
	int dHeight[8] = { -1, 0, 1, 1, 1, 0, -1, -1 };
	int dWidth[8] = { 1, 1, 1, 0, -1, -1, -1, 0 };

	//Mark this Pixel as checked
	refIMG[pixelHeight][pixelWidth] = 1;

	//Update stardata
	/* IMPORTANT:
	pixelHeight <----SWAP----> pixelWidth if the IMG is transpose or not
	I DONT KNOW WHY */
	data->sumOfXproduct = data->sumOfXproduct + (int)IMG[pixelHeight][pixelWidth] * pixelHeight;
	data->sumOfYproduct = data->sumOfYproduct + (int)IMG[pixelHeight][pixelWidth] * pixelWidth;
	data->sum = data->sum + (int)IMG[pixelHeight][pixelWidth];
	data->area = data->area + 1;

	//Search for 8 neighbor pixels
	for (int i = 0; i < 8; i++)
	{
		int neighborPixelHeight = pixelHeight + dHeight[i];
		int neighborPixelWidth = pixelWidth + dWidth[i];

		//Perform search if neighbor pixel value > 0 and still in the IMG
		if (neighborPixelHeight >= 0 && neighborPixelHeight < img_height &&
			neighborPixelWidth >= 0 && neighborPixelWidth < img_width &&
			IMG[neighborPixelHeight][neighborPixelWidth] > 0 &&
			!refIMG[neighborPixelHeight][neighborPixelWidth])
		{
			Search(neighborPixelHeight, neighborPixelWidth, img_height, img_width, data,IMG,refIMG);
		}
	}
}

STAR *InSert2SortedList(STAR *start,int img_height, int img_width, int XCoordinate, int YCoordinate, int starArea)
{
	//Declare the inserting node temp
	STAR *temp = new STAR;
	//Add data
	temp->X = XCoordinate;
	temp->Y = YCoordinate;
	temp->area = starArea;
	temp->starDistance2StarRef = 0;
	//Calculate the distance from centroid to centre of IMG of each star
	temp->starDistance2Centre = sqrt((temp->X - img_height/2)*(temp->X - img_height/2) + (temp->Y - img_width/2)*(temp->Y - img_width/2));
	//Check if list is empty or the distance from centroid to centre = min -> insert in beginning
	if (start == NULL || temp->starDistance2Centre < start->starDistance2Centre)
	{
		//Reconstruct link
		temp->next = start;
		start = temp;
		return start;
	}
	//If distance from centroid to centre > min -> increase p till meet the correct order
	STAR *p = start;
	while (p->next != NULL  &&  p->next->starDistance2Centre <= temp->starDistance2Centre)
		p = p->next;
	//Reconstruct link
	temp->next = p->next;
	p->next = temp;

	return start;
}

STAR* FreeList(STAR *start)
{
	STAR *p;
	while (start != NULL)
	{
		p = start;
		start = start->next;
		delete p;
	}

	return start;
}
