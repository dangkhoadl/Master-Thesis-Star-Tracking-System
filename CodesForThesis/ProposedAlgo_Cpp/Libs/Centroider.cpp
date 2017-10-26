#include "Centroider.h"

std::vector<Star> centroider(const std::vector<std::vector<int>> &IMG, int levelThreshold, int areaThreshold, int &numberOfStar) {
    //Declare refIMG 
    int img_height = IMG.size();
    int img_width = IMG[0].size();
    std::vector<std::vector<bool>> refIMG(img_height, std::vector<bool>(img_width, 0));

    //Declare variables
    int count = 0;
    //Init the Star Sorted Linked List
    std::vector<Star> list;

    //scan and perform search
    for (int i = 0; i < img_height; i++) {
        for (int j = 0; j < img_width; j++) {
            //If this pixel is not checked && > levelThreshold
            if (!refIMG[i][j] && IMG[i][j] > levelThreshold) {
                //Declare stardata
                StarData *data = new StarData;
                data->sumOfXproduct = 0;
                data->sumOfYproduct = 0;
                data->sum = 0;
                data->area = 0;

                //Perform a recursive search
                search(i, j, img_height, img_width, levelThreshold, data, IMG, refIMG);

                //Create and Add star to a Sorted Linked List
                insert2List(list, img_height, img_width, data->sumOfXproduct / data->sum, data->sumOfYproduct / data->sum, data->area);
                ++count;

                //Free stardata
                delete data;
            }
        }
    }

    //Update number Of Stars
    numberOfStar = count;

    //return the list
    return list;
}

void search(int pixelHeight, int pixelWidth, int img_height, int img_width, int levelThreshold, StarData *data, const std::vector<std::vector<int>> &IMG, std::vector<std::vector<bool>> &refIMG) {
    //Search pattern of 8 neighbor pixels
    //     6   7   0
    //     5   *   1
    //     4   3   2
    int dHeight[8] = { -1, 0, 1, 1, 1, 0, -1, -1 };
    int dWidth[8] = { 1, 1, 1, 0, -1, -1, -1, 0 };

    //Mark this Pixel as checked
    refIMG[pixelHeight][pixelWidth] = true;

    //Update stardata
    /* IMPORTANT:
        pixelHeight <----SWAP----> pixelWidth if the IMG is transpose or not
        I DONT KNOW WHY 
    */
    data->sumOfXproduct = data->sumOfXproduct + (int)IMG[pixelHeight][pixelWidth] * pixelHeight;
    data->sumOfYproduct = data->sumOfYproduct + (int)IMG[pixelHeight][pixelWidth] * pixelWidth;
    data->sum = data->sum + (int)IMG[pixelHeight][pixelWidth];
    ++data->area;

    //Search for 8 neighbor pixels
    for (int i = 0; i < 8; ++i) {
        int neighborPixelHeight = pixelHeight + dHeight[i];
        int neighborPixelWidth = pixelWidth + dWidth[i];

        //Perform search if neighbor pixel value > levelThreshold and still in the IMG
        if (neighborPixelHeight >= 0 && neighborPixelHeight < img_height &&
            neighborPixelWidth >= 0 && neighborPixelWidth < img_width &&
            IMG[neighborPixelHeight][neighborPixelWidth] > levelThreshold &&
            !refIMG[neighborPixelHeight][neighborPixelWidth])
        {
            search(neighborPixelHeight, neighborPixelWidth, img_height, img_width, levelThreshold, data, IMG, refIMG);
        }
     }
 }

void insert2List(std::vector<Star> &list, int img_height, int img_width, int XCoordinate, int YCoordinate, int starArea) {
    //Declare the inserting node temp
    Star *temp = new Star;
    //Add data
    temp->X = XCoordinate;
    temp->Y = YCoordinate;
    temp->area = starArea;
    temp->starDistance2StarRef = 0;

    //Calculate the distance from centroid to centre of IMG of each star
    temp->starDistance2Centre = sqrt((temp->X - img_height / 2)*(temp->X - img_height / 2) + (temp->Y - img_width / 2)*(temp->Y - img_width / 2));

    list.push_back(*temp);
    std::push_heap(list.begin(), list.end(), [](const Star &a, const Star &b) {return a.starDistance2Centre > b.starDistance2Centre; });
    delete temp;
}
