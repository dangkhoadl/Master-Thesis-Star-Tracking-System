#include "InOut.h"

void ReadIMG(ifstream &FileIn, int img_height, int img_width, int **IMG)
{
	if (!FileIn)
	{
		cout << "\nNo IMG input";
		cout << endl;
		system("pause");
		return;
	}
	for (int i = 0; i < img_height; i++)
	{
		for (int j = 0; j < img_width; j++)
		{
			FileIn >> IMG[i][j];
			FileIn.seekg(1, SEEK_CUR); // skip " "
		}
	}
	FileIn.close();
}

void TestIMG(ofstream &FileOut, int img_height, int img_width, int **IMG)
{
	for (int i = 0; i < img_height; i++)
	{
		for (int j = 0; j < img_width; j++)
		{
			FileOut << IMG[i][j];
			FileOut << ' ';
		}
		FileOut << endl;
	}
	FileOut.close();
}

void DisplayStarList(ofstream &FileOut,STAR *start,int NumberOfStar)
{
	STAR* p = start;
	if (p == NULL)
		FileOut << "Empty List" << endl;
	FileOut << "Number of stars: " << NumberOfStar << endl;
	while (p != NULL)
	{
		FileOut << p->X << ' ' << p->Y << ' ' << p->area << ' ' << p->starDistance2Centre << ' ' << p->starDistance2StarRef << endl;
		p = p->next;
	}
	FileOut.close();
}

void ReadSPD(ifstream &FileIn,NODE *table[],int numberEntries)
{
	if (!FileIn)
	{
		cout << "\nCant read SPD";
		cout << endl;
		system("pause");
		return;
	}
	for (int i = 0; i < numberEntries; i++) //while (!FileIn.eof())
	{
		//Declare rec
		STARPATTERN *rec = new STARPATTERN;
		//Read
		FileIn >> rec->N;
		FileIn.seekg(1, SEEK_CUR); // skip " "
		FileIn >> rec->d1;
		FileIn.seekg(1, SEEK_CUR); // skip " "
		FileIn >> rec->d2;
		FileIn.seekg(1, SEEK_CUR); // skip " "
		FileIn >> rec->d3;
		FileIn.seekg(1, SEEK_CUR); // skip " "
		FileIn >> rec->starID;
		FileIn.seekg(1, SEEK_CUR); // skip "\n"
		//Insert into a table
		Insert(rec, table);
		//Free rec
		delete rec;
	}
	FileIn.close();
}

void Insert(STARPATTERN *rec, NODE *table[])
{
	//Hash key = N
	int key = rec->N;
	//Insert to the beginning of list[key]
	NODE *temp = new NODE;
	temp->info = *rec;
	//Relink, start = table[key]
	temp->link = table[key];
	table[key] = temp;
}

void DisplayTable(ofstream &FileOut,NODE *table[],int tableSize)
{
	NODE *p;
	//Traverse through table
	for (int i = 0; i < tableSize; i++)
	{
		FileOut << '[' << i << "]: ";
		if (table[i] != NULL)
		{
			//Traverse through a list and print starID
			p = table[i];
			while (p != NULL)
			{
				FileOut << p->info.starID << ' ';
				p = p->link;
			}
		}
		FileOut << endl;
	}
	FileOut.close();
}

void DisplayStarPattern(ofstream &FileOut, STARPATTERN *starPattern)
{
	FileOut << starPattern->N << ' ' << starPattern->d1 << ' ' << starPattern->d2 << ' ' << starPattern->d3 << ' ' << starPattern->starID << ' ' << starPattern->sqError;
	FileOut.close();
}

void DisplayResult(ofstream &FileOut, NODE *result)
{
	FileOut << result->info.starID << ' ' << result->info.sqError;
	FileOut.close();
}