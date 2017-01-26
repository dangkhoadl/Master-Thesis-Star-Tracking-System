#include "Algorithm.h"

STAR *CalculateDistance2StarRef(STAR *start)
{
	STAR *p = start->next;
	while (p != NULL)
	{
		p->starDistance2StarRef = sqrt( (start->X - p->X)*(start->X - p->X) + (start->Y - p->Y)*(start->Y - p->Y) );
		p = p->next;
	}

	return start;
}

STARPATTERN *GetStarPattern(STAR *sortedList, STARPATTERN *starPattern,int FOV)
{
	//Initialize parameter
	int count = 0;
	float distance[3] = { 0,0,0 };
	//Traverse through the sorted list to get star pattern
	STAR *p = sortedList;
	while (p != NULL)
	{
		//only pick 3 neighboring stars within FOV / 2 of starRef 
		if (p->starDistance2StarRef > FOV / 2)
			break;
		if(count < 3) distance[count] = p->starDistance2StarRef;
		count++;
		//next element
		p = p->next;
	}
	//Update Starpattern
	starPattern->N = count;
	starPattern->d1 = distance[0];
	starPattern->d2 = distance[1];
	starPattern->d3 = distance[2];

	return starPattern;
}

STAR *SortList(STAR *oldList,STAR *newList)
{
	//Init the new List
	newList = NULL;

	//Traverse through oldList to transfer -> newList
	while (oldList != NULL)
	{
		//Declare the inserting node temp
		STAR *temp = new STAR;
		//Add data
		temp->X = oldList->X;
		temp->Y = oldList->Y;
		temp->area = oldList->area;
		temp->starDistance2Centre = oldList->starDistance2Centre;
		temp->starDistance2StarRef = oldList->starDistance2StarRef;
		//Check if list is empty or the distance from centroid to starRef = min -> insert in beginning
		if (newList == NULL || temp->starDistance2StarRef < newList->starDistance2StarRef)
		{
			//Reconstruct link
			temp->next = newList;
			newList = temp;
			//next element
			oldList = oldList->next;
			continue;
		}
		//If distance from centroid to starRef > min -> increase p till meet the correct order
		STAR *p = newList;
		while (p->next != NULL  &&  p->next->starDistance2StarRef <= temp->starDistance2StarRef)
			p = p->next;
		//Reconstruct link
		temp->next = p->next;
		p->next = temp;
		//next element
		oldList = oldList->next;
	}

	return newList;
}

NODE *MatchPatternWithSPD(NODE *table[],STARPATTERN *starPattern,NODE *result)
{
	//Move to key(N)
	int h = starPattern->N;
	//Init the result
	result = NULL;
	//Traverse and search in list h
	NODE *p = table[h];
	while (p != NULL)
	{
		//Initialize value
		int error[3] = { 0,0,0 };
		float sqError = 0;
		//Perform processing
		error[0] = p->info.d1 - starPattern->d1;
		error[1] = p->info.d2 - starPattern->d2;
		error[2] = p->info.d3 - starPattern->d3;
		//sqError = sqrt( error[0]*error[0] + error[1]*error[1] + error[2]*error[2])/3;
		sqError = error[0]*error[0] + error[1]*error[1] + error[2]*error[2];
		//Sort
		result = SortStarIDList(p,result,sqError);
		//next element
		p = p->link;
	}

	return result;
}

NODE *SortStarIDList(NODE *node, NODE *newList,int sqError)
{
	//Declare the inserting node temp
	NODE *temp = new NODE;
	//Add data
	temp->info.N = node->info.N;
	temp->info.d1 = node->info.d1;
	temp->info.d2 = node->info.d2;
	temp->info.d3 = node->info.d3;
	temp->info.starID = node->info.starID;
	temp->info.sqError = sqError;
	//Check if list is empty or the squred error = min -> insert in beginning
	if (newList == NULL || sqError < newList->info.sqError)
	{
		//Reconstruct link
		temp->link = newList;
		newList = temp;
	}
	else
	{
		//If sqError > min -> increase p till meet the correct order
		NODE *p = newList;
		while (p->link != NULL  &&  p->link->info.sqError <= sqError)
			p = p->link;
		//Reconstruct link
		temp->link = p->link;
		p->link = temp;
	}

	return newList;
}