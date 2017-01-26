#ifndef __ALGORITHM__
#define __ALGORITHM__

#include "Centroider.h"
#include "InOut.h"

STAR *CalculateDistance2StarRef(STAR *start);
STAR *SortList(STAR *oldList, STAR *newList);
STARPATTERN *GetStarPattern(STAR *sortedList, STARPATTERN *starPattern, int FOV);
NODE *MatchPatternWithSPD(NODE *table[], STARPATTERN *starPattern, NODE *result);
NODE *SortStarIDList(NODE *node, NODE *newList, int sqError);

#endif
